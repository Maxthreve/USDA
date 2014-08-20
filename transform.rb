output = File.open("test.rb", "w")


        #food desc
        File.open("fooddesc.txt","r") do |file|
          while(line = file.gets)
            l = line.split("^")
             n =[]
             l.each do |i|
               temp = i.gsub(/~/, "").gsub(/\n/,"").rstrip()
               if temp != ""
                 n <<  temp
               else
                 n << "nil"
               end
             end

           fooddesc =  "FoodDesc.create( ndbID: '#{n[0]}', fdGrpID: '#{n[1]}', longDesc: '#{n[2]}', shortDesc: '#{n[3]}', comName: '#{n[4]}', manufacName: '#{n[5]}', surveyIND: '#{n[6]}', refDesc: '#{n[7]}', refusePCT: #{n[8]}, sciName: '#{n[9]}', nFactor: #{n[10]}, proFactor: #{n[11]}, fatFactor: #{n[12]}"
           if n[13].include?(".")
             fooddesc << ", choFactor: #{n[13]})"
           else
             fooddesc <<")"
           end
          output << fooddesc
        end
      end

      #Food group decription file

      File.open("foodGroupDesc.txt") do |file|
        while(line = file.gets)
          l =line.split("^")
          n = []
          l.each do |i|
            n << i.gsub(/~/,"").gsub(/\n/, "").rstrip()

          end
          output << "FoodGroupDescription.create( fdGrpID: '#{n[0]}', desc: '#{n[1]}')"
          # puts f
        end
      end


      # Foot note file

      File.open("Footnote.txt") do |file|
        while(line = file.gets)
          l = line.split("^")
          n = []
          l.each do |i|
            temp = i.gsub(/~/,"").gsub(/\n/,"").rstrip()
            if temp != ""
              n << temp
            else
              n << "nil"
            end
          end
          output << "Footnote.create(ndbID: '#{n[0]}', footntID: '#{n[1]}', footntType: '#{n[2]}', nutrID: '#{n[3]}', footntText: '#{n[4]}')"
        end
      end


      # nutrition data file
      #
      File.open("nutrData.txt") do |file|
        count = 0
        while(line = file.gets)
           l = line.split("^")
           n = []
           l.each do |i|
             temp = i.gsub(/~/, "").gsub(/\n/, "").rstrip()
             if temp != ""
               n << temp
             else
               n << "nil"
             end

          #   count = count + 1
          #   puts count
          end
          output << "NutData.create( ndbID: '#{n[0]}', nutrID: '#{n[1]}', nutrVal: #{n[3]}, numDataPts: #{n[4]}, stdError: #{n[5]}, srcID: '#{n[6]}', deriveID: '#{n[7]}', refNdbID: '#{n[8]}', addNutrIND: '#{n[9]}', numStudies: #{n[10]}, min: #{n[11]}, max: #{n[12]}, lowEB: #{n[13]}, upEB: #{n[14]} , df:#{n[15]}, addModDate: '#{n[16]}', statCmt: '#{n[17]}', ccIND: '#{n[18]}')"

        end
      end

      #weight File

      File.open("weight.txt") do |file|
        while(line = file.gets)
          l = line.split("^")
          n = []
          l.each do |i|
            temp = i.gsub(/~/,"").gsub(/\n/, "").rstrip()
            if temp != ""
              n << temp
            else
              n << "nil"
            end
          end
        output << "Weight.create(ndbID: '#{n[0]}', seq: '#{n[1]}', amount: #{n[2]}, msreDesc: '#{n[3]}', gmWgt: #{n[4]}, numDataPts: #{n[5]}, stdDev: #{n[6]})"
        end

      end

      #Langual file

      File.open("langaul.txt") do |file|
        while(line = file.gets)
          l = line.split("^")
          n = []
          l.each do |i|
            temp = i.gsub(/~/, "").gsub(/\n/,"").rstrip()
            if temp != ""
              n << temp
            else
              n << "nil"
            end
          end
          output << "Langual.create(ndbID: '#{n[0]}', factorID: '#{n[1]}')"
        end
      end

      #langual description file

      File.open("launglDesc.txt") do |file|
        while(line = file.gets)
          l = line.split("^")
          n = []
          l.each do |i|
            temp = i.gsub(/~/, "").gsub(/\n/, "").rstrip()
             if temp != ""
               n << temp
             else
                n << "nil"
             end
           end
           output << "LangDesc.create(factorID: '#{n[0]}', description: '#{n[1]}')"
         end
       end

      #nutrition description

      File.open("nutrDesc.txt") do |file|
        while(line = file.gets)
          l = line.split("^")
          n = []
          l.each do |i|
            temp = i.gsub(/~/, "").gsub(/\n/, "").rstrip()
            if temp != ""
              n << temp
            else
              n << "nil"
            end
          end
          output << "NutrDef.create(nutrID: '#{n[0]}', units: '#{n[1]}', tagName: '#{n[2]}', nutrDesc: '#{n[3]}', numDec: '#{n[4]}', srOrder:'#{n[5]}')"
        end
      end

      # source code file
      File.open("sourceCode.txt") do |file|
        while(line = file.gets)
          l = line.split("^")
          n = []
          l.each do |i|
            temp = i.gsub(/~/, "").gsub(/\n/, "").rstrip()
            if temp != ""
              n << temp
            else
              n << "nil"
            end
          end
          output << "SrcCode.create(srcID: '#{n[0]}', srcDecs: '#{n[1]}')"
        end
      end

      #derive code

      File.open("dataCode.txt") do |file|
        while(line = file.gets)
          l = line.split("^")
          n = []
          l.each do |i|
            temp = i.gsub(/~/, "").gsub(/\n/, "").rstrip()
            if temp != ""
              n << temp
            else
              n << "nil"
            end
          end
          output << "DeriveCode.create(derivID: '#{n[0]}', deriveDecs: '#{n[1]}')"
        end
      end

      #data source

      File.open("dataSource.txt") do |file|
        while(line = file.gets)
          l = line.split("^")
          n = []
          l.each do |i|
            temp = i.gsub(/~/, "").gsub(/\n/, "").rstrip()
            if temp != ""
              n << temp
            else
              n << "nil"
            end
          end
          output << "DataSrc.create( dataSrcID: '#{n[0]}', authors: '#{n[1]}', title: '#{n[2]}', year: '#{n[3]}', journal: '#{n[4]}', volCity: '#{n[5]}', issueState: '#{n[6]}', startPage: '#{n[7]}', endPage: '#{n[8]}' )"
        end
      end

      #data source link

      File.open("dataSrcLnk.txt") do |file|
        while(line = file.gets)
          l = line.split("^")
          n = []
          l.each do |i|
            temp = i.gsub(/~/, "").gsub(/\n/, "").rstrip()
            if temp != ""
              n << temp
            else
              n << "nil"
            end
          end
          output << "<DataSrcLnk.create( ndbID: '#{n[0]}', nutrID: '#{n[1]}', dataSrcID: '#{n[2]}' )"
        end
      end

output.close
