require 'zip'
require 'pry'
count = 0

Zip::ZipFile.open("db/sr26.zip") do |zipfile|
  food desc
  extract the file from the zip file

  zipfile.get_entry("FOOD_DES.txt").extract
  File.foreach("FOOD_DES.txt") do |line|
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
    FoodDesc.create( ndbID: '#{n[0]}', fdGrpID: '#{n[1]}', longDesc: '#{n[2]}', shortDesc: '#{n[3]}', comName: '#{n[4]}', manufacName: '#{n[5]}', surveyIND: '#{n[6]}', refDesc: '#{n[7]}', refusePCT: '#{n[8]}', sciName: '#{n[9]}', nFactor: '#{n[10]}', proFactor: '#{n[11]}', fatFactor: '#{n[12]}', choFactor: '#{n[13]}')
  end
  File.delete("FOOD_DES.TXT")


  ############################
  # Food group decription file
  ############################

    zipfile.get_entry("FD_GROUP.txt").extract
    File.foreach("FD_GROUP.txt") do |line|
      l =line.split("^")
      n = []
      l.each do |i|
        n << i.gsub(/~/,"").gsub(/\n/, "").rstrip()
      end
      FoodGroupDescription.create( fdGrpID: '#{n[0]}', desc: '#{n[1]}')
    end
    File.delete("FD_GROUP.txt")

  #################
  # Foot note file
  ################

    zipfile.get_entry("FOOTNOTE.txt").extract
    File.foreach("FOOTNOTE.txt") do |line|
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
      Footnote.create(ndbID: '#{n[0]}', footntID: '#{n[1]}', footntType: '#{n[2]}', nutrID: '#{n[3]}', footntText: '#{n[4]}')
    end
    File.delete("FOOTNOTE.txt")

  #####################
  # nutrition data file
  ####################

    zipfile.get_entry("NUT_DATA.txt").extract
    File.foreach("NUT_DATA.txt") do |line|
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

    NutData.create( ndbID: '#{n[0]}', nutrID: '#{n[1]}', nutrVal: '#{n[3]}', numDataPts: '#{n[4]}', stdError: '#{n[5]}', srcID: '#{n[6]}', deriveID: '#{n[7]}', refNdbID: '#{n[8]}', addNutrIND: '#{n[9]}', numStudies: '#{n[10]}', min: '#{n[11]}', max: '#{n[12]}', lowEB: '#{n[13]}', upEB: '#{n[14]}' , df: '#{n[15]}', addModDate: '#{n[16]}', statCmt: '#{n[17]}', ccIND: '#{n[18]}')
    end
    File.delete("NUT_DATA.txt")

  ##############
  # weight File
  #############

    zipfile.get_entry("WEIGHT.txt").extract
    count = 0
    File.open("WEIGHT.txt", "r") do |file|
      while (line = file.gets)
        begin
            # puts line
            if line
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
            Weight.create(ndbID: '#{n[0]}', seq: '#{n[1]}', amount: '#{n[2]}' , msreDesc: '#{n[3]}', gmWgt: '#{n[4]}', numDataPts: '#{n[5]}', stdDev: '#{n[6]}' )
            count = count +1
        end
        rescue
            puts "bad character #{line}"
            line = file.gets
            retry
        end
      end
    end
    File.delete("WEIGHT.txt")

  ##############
  # Langual file
  #############

    zipfile.get_entry("LANGUAL.txt").extract
    File.foreach("LANGUAL.txt") do |line|
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
      Langual.create(ndbID: '#{n[0]}', factorID: '#{n[1]}')
    end
    File.delete("LANGUAL.txt")

  ###########################
  # langual description file
  ##########################

    zipfile.get_entry("LANGDESC.txt").extract
    File.foreach("LANGDESC.txt") do |line|
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
      LangDesc.create(factorID: '#{n[0]}', description: '#{n[1]}')
    end
    File.delete("LANGDESC.txt")

  #######################
  nutrition description
  ######################

  zipfile.get_entry("NUTR_DEF.txt").extract
  File.open("NUTR_DEF.txt", "r") do |file|
    while (line = file.gets)
      begin
          # puts line
          if line
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
            NutrDef.create(nutrID: '#{n[0]}', units: '#{n[1]}', tagName: '#{n[2]}', nutrDesc: '#{n[3]}', numDec: '#{n[4]}', srOrder:'#{n[5]}')
          count = count +1
      end
      rescue
          puts "bad character #{line}"
          line = file.gets
          retry
      end
    end
  end
  File.delete("NUTR_DEF.txt")

  ###################
  # source code file
  #################

    zipfile.get_entry("SRC_CD.txt").extract
    File.foreach("SRC_CD.txt") do |line|
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
     SrcCode.create(srcID: '#{n[0]}', srcDecs: '#{n[1]}')
    end
    File.delete("SRC_CD.txt")

  ##############
  # derive code
  ############

    zipfile.get_entry("DERIV_CD.txt").extract
    File.foreach("DERIV_CD.txt") do |line|
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
      DeriveCode.create(derivID: '#{n[0]}', deriveDecs: '#{n[1]}')
    end
    File.delete("DERIV_CD.txt ")

  #############
  # data source
  ############

    zipfile.get_entry("DATA_SRC.txt").extract
    File.foreach("DATA_SRC.txt") do |line|
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
      DataSrc.create( dataSrcID: '#{n[0]}', authors: '#{n[1]}', title: '#{n[2]}', year: '#{n[3]}', journal: '#{n[4]}', volCity: '#{n[5]}', issueState: '#{n[6]}', startPage: '#{n[7]}', endPage: '#{n[8]}' )
    end
    File.delete("DATA_SRC.txt")

  ##################
  # data source link
  #################

    zipfile.get_entry("DATSRCLN.txt").extract
      File.foreach("DATSRCLN.txt") do |line|
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
        DataSrcLnk.create( ndbID: '#{n[0]}', nutrID: '#{n[1]}', dataSrcID: '#{n[2]}' )
      end
      File.delete("DATSRCLN.txt")
end
