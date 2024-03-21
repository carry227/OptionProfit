from option_layout import OptionLayout

opt = OptionLayout()
opt.add('BC',20250,1,40.5)
opt.add('BP',19750,1,70)
opt.add('SC',20000,1,122)
opt.add('SP',20000,1,170)
opt.cal()
opt.show()