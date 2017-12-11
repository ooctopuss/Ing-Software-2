require 'rails_admin/config/actions'
require 'prawn'

module RailsAdmin
  module Config
    module Actions
      class Pdf < Base
        RailsAdmin::Config::Actions.register(self)
        register_instance_option :member do
          true
        end
        register_instance_option :pjax? do
          false
        end
        register_instance_option :controller do
          Proc.new do
            pdf = Prawn::Document.new
            pdf.font "Helvetica"
            pdf.define_grid(:columns => 5, :rows => 8, :gutter => 10)

            pdf.grid([0,0], [1,1]).bounding_box do
              pdf.text  "#{@object.client.business_name}", :size => 18
              pdf.text "Invoice No: #{@object.id}", :align => :left
              pdf.text "Date: #{Date.today.to_s}", :align => :left
              pdf.move_down 10
              pdf.text "Attn: #{@object.client.name} #{@object.client.surname} "
              pdf.text "#{@object.client.business_name}"
              pdf.text "Email: #{@object.client.email}"
            end

            pdf.grid([0,3.6], [1,4]).bounding_box do
              # Assign the path to your file name first to a local variable.
              logo_path = File.expand_path('../../../public/logo4.png', __FILE__)

              # Displays the image in your PDF. Dimensions are optional.
              pdf.image logo_path, :width => 200 , :height =>85, :position => :center

              # Company address
              pdf.move_down 10
              pdf.text "OOCTOPUSS COMPANY", :align => :left
            end

            pdf.text "Details of Invoice", :style => :bold_italic
            pdf.stroke_horizontal_rule
            temp_arr = [{:name => "Ore standard", :price => "#{@object.rate_hour_standard} $"}, {:name => "Ore extra", :price => "#{@object.rate_hour_extra} $"}]

            pdf.move_down 10
            items = [["Description","N° hour", "Price"]]
            items += temp_arr.each_with_index.map do |item, i|
              [item[:name],if (i==0) then  "#{@object.hours_standard}" else  "#{@object.hours_extra}" end,item[:price],]
            end

            h_s=@object.hours_standard
            r_h_s=@object.rate_hour_standard
            h_e=@object.hours_extra
            r_h_e=@object.rate_hour_extra

            total_free = h_s * r_h_s + h_e * r_h_e

            items += [["","", ""]]
            items += [["Penalty clause","", "#{@object.penalty_clause} $  "]]
            items += [["","", ""]]
            items += [["Subtotal (without taxes)","", "#{total_free} $"]]
            items += [["Tax rate ","", "#{@object.client.iva}%"]]
            items += [["Total (with taxes)","", "#{@object.total_amount} $"]]

            pdf.table items, :header => true,:column_widths => { 0 => 350,1 =>55, 3 => 100}, :row_colors => ["FFFFFF"] do
              style(columns(3)) {|x| x.align = :right }
            end

            pdf.move_down 40
            pdf.text "Details of Invoice: Activity", :style => :bold_italic
            pdf.stroke_horizontal_rule

            pdf.move_down 20
            pdf.text "Description: "
            pdf.text "#{@object.activity.description}"

            pdf.move_down 60
            pdf.text "#{@object.date_of_issue}..............................."
            pdf.text "Date Signature/Company Stamp"

            pdf.move_down 10
            pdf.stroke_horizontal_rule

            pdf.bounding_box([pdf.bounds.right - 50, pdf.bounds.bottom], :width => 60, :height => 20) do
              pagecount = pdf.page_count
              pdf.text "Page #{pagecount}"
            end

            pdf.render_file("Pdf_invoices/#{@object.class.to_s.demodulize}_#{@object.client.name}_#{@object.client.surname}.pdf")

            File.open("Pdf_invoices/#{@object.class.to_s.demodulize}_#{@object.client.name}_#{@object.client.surname}.pdf", 'r') do |f|
              send_data f.read.force_encoding('BINARY'), :filename => "#{@object.class.to_s.demodulize}_#{@object.client.name}_#{@object.client.surname}", :type => "application/pdf", :disposition => "attachment"
            end

          end
        end

        register_instance_option :link_icon do
          'fa fa-file-pdf-o'
        end
      end
  end
  end
end
