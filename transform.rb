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

     while n.size() < 14
        n << "nil"
      end
     fooddesc =  "FoodDesc.create( ndbID: '#{n[0]}', fdGrpID: '#{n[1]}', longDesc: '#{n[2]}', shortDesc: '#{n[3]}', comName: '#{n[4]}', manufacName: '#{n[5]}', surveyIND: '#{n[6]}', refDesc: '#{n[7]}', refusePCT: #{n[8]}, sciName: '#{n[9]}', nFactor: #{n[10]}, proFactor: #{n[11]}, fatFactor: #{n[12]}"
     if n[13].include?(".")
       fooddesc << ", choFactor: #{n[13]})"
     else
       fooddesc <<")"
     end
    # puts fooddesc
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
    f = "FoodGroupDescription.create( fdGrpID: '#{n[0]}', desc: '#{n[1]}')"
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
    f = "Footnote.create(ndbID: '#{n[0]}', footntID: '#{n[1]}', footntType: '#{n[2]}', nutrID: '#{n[3]}', footntText: '#{n[4]}')"
  end
end


# nutrition data file
#
# File.open("nutrData.txt") do |file|
#   count = 0
#   while(line = file.gets)
#      l = line.split("^")
#      n = []
#      l.each do |i|
#        temp = i.gsub(/~/, "").gsub(/\n/, "").rstrip()
#        if temp != ""
#          n << temp
#        else
#          n << "nil"
#        end
#
#     #   count = count + 1
#     #   puts count
#     end
#     f = "NutData.create( ndbID: '#{n[0]}', nutrID: '#{n[1]}', nutrVal: #{n[3]}, numDataPts: #{n[4]}, stdError: #{n[5]}, srcID: '#{n[6]}', deriveID: '#{n[7]}', refNdbID: '#{n[8]}', addNutrIND: '#{n[9]}', numStudies: #{n[10]}, min: #{n[11]}, max: #{n[12]}, lowEB: #{n[13]}, upEB: #{n[14]} , df:#{n[15]}, addModDate: '#{n[16]}', statCmt: '#{n[17]}', ccIND: '#{n[18]}')"
#
#   end
# end

#weight File

# File.open("weight.txt") do |file|
#   while(line = file.gets)
#     l = line.split("^")
#     n = []
#     l.each do |i|
#       temp = i.gsub(/~/,"").gsub(/\n/, "").rstrip()
#       if temp != ""
#         n << temp
#       else
#         n << "nil"
#       end
#     end
#   puts"Weight.create(ndbID: '#{n[0]}', seq: '#{n[1]}', amount: #{n[2]}, msreDesc: '#{n[3]}', gmWgt: #{n[4]}, numDataPts: #{n[5]}, stdDev: #{n[6]})"
#   end
#
# end

#Langual file
#
# File.open("langaul.txt") do |file|
#   while(line = file.gets)
#     l = line.split("^")
#     n = []
#     l.each do |i|
#       temp = i.gsub(/~/, "").gsub(/\n/,"").rstrip()
#       if temp != ""
#         n << temp
#       else
#         n << "nil"
#       end
#     end
#     puts "Langual.create(ndbID: '#{n[0]}', factorID: '#{n[1]}')"
#   end
# end
