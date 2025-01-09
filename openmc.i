pin_pitch = ${fparse 5.5685 / 10 * 1.180}

[Mesh]
  [pin]
    type = PolygonConcentricCircleMeshGenerator
    polygon_size = ${fparse pin_pitch}
    polygon_size_style = radius
    num_sides = 6
    num_sectors_per_side = '2 2 2 2 2 2'
  []
  [bundle]
    type = PatternedHexMeshGenerator
    pattern_boundary = none
    inputs = 'pin'
    pattern = '0 0 0 0 0 0 0 0 0 0;
              0 0 0 0 0 0 0 0 0 0 0;
             0 0 0 0 0 0 0 0 0 0 0 0;
            0 0 0 0 0 0 0 0 0 0 0 0 0;
           0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
         0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
       0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
       0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
         0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
           0 0 0 0 0 0 0 0 0 0 0 0 0 0;
            0 0 0 0 0 0 0 0 0 0 0 0 0;
             0 0 0 0 0 0 0 0 0 0 0 0;
              0 0 0 0 0 0 0 0 0 0 0;
               0 0 0 0 0 0 0 0 0 0
'
  []
[]

[Problem]
  type = OpenMCCellAverageProblem
  power = 1
  cell_level = 2
  normalize_by_global_tally = false


  [Tallies]
    [cell]
      type = CellTally
      blocks = '1'
      score = 'kappa_fission flux'
      output = 'unrelaxed_tally_rel_error unrelaxed_tally_std_dev'
    []
  []
[]

[Executioner]
  type = Steady
[]

[Outputs]
  exodus = true
  csv = true
[]

[Postprocessors]
  [cell_0_0]
    type = PointValue
    variable = kappa_fission
    point = '0 0 0.0'
  []
  [cell_1_0]
    type = PointValue
    variable = kappa_fission
    point = '0.0 1.1381011407897808 0.0'
  []
  [cell_1_1]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 0.5690505703948904 0.0'
  []
  [cell_1_2]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 -0.5690505703948904 0.0'
  []
  [cell_1_3]
    type = PointValue
    variable = kappa_fission
    point = '0.0 -1.1381011407897808 0.0'
  []
  [cell_1_4]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 -0.5690505703948904 0.0'
  []
  [cell_1_5]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 0.5690505703948904 0.0'
  []
  [cell_2_0]
    type = PointValue
    variable = kappa_fission
    point = '0.0 2.2762022815795615 0.0'
  []
  [cell_2_1]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 1.7071517111846712 0.0'
  []
  [cell_2_2]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 1.138101140789781 0.0'
  []
  [cell_2_3]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 2.220446049250313e-16 0.0'
  []
  [cell_2_4]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 -1.1381011407897805 0.0'
  []
  [cell_2_5]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 -1.7071517111846708 0.0'
  []
  [cell_2_6]
    type = PointValue
    variable = kappa_fission
    point = '0.0 -2.276202281579561 0.0'
  []
  [cell_2_7]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 -1.7071517111846708 0.0'
  []
  [cell_2_8]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 -1.1381011407897805 0.0'
  []
  [cell_2_9]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 2.220446049250313e-16 0.0'
  []
  [cell_2_10]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 1.138101140789781 0.0'
  []
  [cell_2_11]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 1.7071517111846712 0.0'
  []
  [cell_3_0]
    type = PointValue
    variable = kappa_fission
    point = '0.0 3.4143034223693425 0.0'
  []
  [cell_3_1]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 2.845252851974452 0.0'
  []
  [cell_3_2]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 2.276202281579562 0.0'
  []
  [cell_3_3]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 1.7071517111846717 0.0'
  []
  [cell_3_4]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 0.5690505703948909 0.0'
  []
  [cell_3_5]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 -0.5690505703948898 0.0'
  []
  [cell_3_6]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 -1.7071517111846706 0.0'
  []
  [cell_3_7]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 -2.276202281579561 0.0'
  []
  [cell_3_8]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 -2.8452528519744513 0.0'
  []
  [cell_3_9]
    type = PointValue
    variable = kappa_fission
    point = '0.0 -3.4143034223693416 0.0'
  []
  [cell_3_10]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 -2.8452528519744513 0.0'
  []
  [cell_3_11]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 -2.276202281579561 0.0'
  []
  [cell_3_12]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 -1.7071517111846708 0.0'
  []
  [cell_3_13]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 -0.56905057039489 0.0'
  []
  [cell_3_14]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 0.5690505703948907 0.0'
  []
  [cell_3_15]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 1.7071517111846715 0.0'
  []
  [cell_3_16]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 2.276202281579562 0.0'
  []
  [cell_3_17]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 2.845252851974452 0.0'
  []
  [cell_4_0]
    type = PointValue
    variable = kappa_fission
    point = '0.0 4.552404563159123 0.0'
  []
  [cell_4_1]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 3.9833539927642327 0.0'
  []
  [cell_4_2]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 3.4143034223693425 0.0'
  []
  [cell_4_3]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 2.845252851974452 0.0'
  []
  [cell_4_4]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 2.276202281579562 0.0'
  []
  [cell_4_5]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 1.1381011407897812 0.0'
  []
  [cell_4_6]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 4.440892098500626e-16 0.0'
  []
  [cell_4_7]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 -1.1381011407897803 0.0'
  []
  [cell_4_8]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 -2.276202281579561 0.0'
  []
  [cell_4_9]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 -2.8452528519744513 0.0'
  []
  [cell_4_10]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 -3.4143034223693416 0.0'
  []
  [cell_4_11]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 -3.983353992764232 0.0'
  []
  [cell_4_12]
    type = PointValue
    variable = kappa_fission
    point = '0.0 -4.552404563159122 0.0'
  []
  [cell_4_13]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 -3.983353992764232 0.0'
  []
  [cell_4_14]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 -3.4143034223693416 0.0'
  []
  [cell_4_15]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 -2.8452528519744513 0.0'
  []
  [cell_4_16]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 -2.276202281579561 0.0'
  []
  [cell_4_17]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 -1.1381011407897803 0.0'
  []
  [cell_4_18]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 4.440892098500626e-16 0.0'
  []
  [cell_4_19]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 1.1381011407897812 0.0'
  []
  [cell_4_20]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 2.276202281579562 0.0'
  []
  [cell_4_21]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 2.845252851974452 0.0'
  []
  [cell_4_22]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 3.4143034223693425 0.0'
  []
  [cell_4_23]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 3.9833539927642327 0.0'
  []
  [cell_5_0]
    type = PointValue
    variable = kappa_fission
    point = '0.0 5.6905057039489035 0.0'
  []
  [cell_5_1]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 5.121455133554013 0.0'
  []
  [cell_5_2]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 4.552404563159123 0.0'
  []
  [cell_5_3]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 3.9833539927642327 0.0'
  []
  [cell_5_4]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 3.4143034223693425 0.0'
  []
  [cell_5_5]
    type = PointValue
    variable = kappa_fission
    point = '4.928122500000001 2.845252851974452 0.0'
  []
  [cell_5_6]
    type = PointValue
    variable = kappa_fission
    point = '4.928122500000001 1.7071517111846715 0.0'
  []
  [cell_5_7]
    type = PointValue
    variable = kappa_fission
    point = '4.928122500000001 0.5690505703948907 0.0'
  []
  [cell_5_8]
    type = PointValue
    variable = kappa_fission
    point = '4.928122500000001 -0.56905057039489 0.0'
  []
  [cell_5_9]
    type = PointValue
    variable = kappa_fission
    point = '4.928122500000001 -1.7071517111846708 0.0'
  []
  [cell_5_10]
    type = PointValue
    variable = kappa_fission
    point = '4.928122500000001 -2.8452528519744513 0.0'
  []
  [cell_5_11]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 -3.4143034223693416 0.0'
  []
  [cell_5_12]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 -3.983353992764232 0.0'
  []
  [cell_5_13]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 -4.552404563159122 0.0'
  []
  [cell_5_14]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 -5.121455133554012 0.0'
  []
  [cell_5_15]
    type = PointValue
    variable = kappa_fission
    point = '0.0 -5.690505703948903 0.0'
  []
  [cell_5_16]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 -5.121455133554012 0.0'
  []
  [cell_5_17]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 -4.552404563159122 0.0'
  []
  [cell_5_18]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 -3.983353992764232 0.0'
  []
  [cell_5_19]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 -3.4143034223693416 0.0'
  []
  [cell_5_20]
    type = PointValue
    variable = kappa_fission
    point = '-4.928122500000001 -2.8452528519744513 0.0'
  []
  [cell_5_21]
    type = PointValue
    variable = kappa_fission
    point = '-4.928122500000001 -1.7071517111846706 0.0'
  []
  [cell_5_22]
    type = PointValue
    variable = kappa_fission
    point = '-4.928122500000001 -0.5690505703948898 0.0'
  []
  [cell_5_23]
    type = PointValue
    variable = kappa_fission
    point = '-4.928122500000001 0.5690505703948909 0.0'
  []
  [cell_5_24]
    type = PointValue
    variable = kappa_fission
    point = '-4.928122500000001 1.7071517111846717 0.0'
  []
  [cell_5_25]
    type = PointValue
    variable = kappa_fission
    point = '-4.928122500000001 2.845252851974452 0.0'
  []
  [cell_5_26]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 3.4143034223693425 0.0'
  []
  [cell_5_27]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 3.9833539927642327 0.0'
  []
  [cell_5_28]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 4.552404563159123 0.0'
  []
  [cell_5_29]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 5.121455133554013 0.0'
  []
  [cell_6_0]
    type = PointValue
    variable = kappa_fission
    point = '0.0 6.828606844738685 0.0'
  []
  [cell_6_1]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 6.259556274343795 0.0'
  []
  [cell_6_2]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 5.690505703948904 0.0'
  []
  [cell_6_3]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 5.121455133554014 0.0'
  []
  [cell_6_4]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 4.552404563159124 0.0'
  []
  [cell_6_5]
    type = PointValue
    variable = kappa_fission
    point = '4.928122500000001 3.9833539927642336 0.0'
  []
  [cell_6_6]
    type = PointValue
    variable = kappa_fission
    point = '5.913747000000001 3.4143034223693434 0.0'
  []
  [cell_6_7]
    type = PointValue
    variable = kappa_fission
    point = '5.913747000000001 2.276202281579563 0.0'
  []
  [cell_6_8]
    type = PointValue
    variable = kappa_fission
    point = '5.913747000000001 1.138101140789782 0.0'
  []
  [cell_6_9]
    type = PointValue
    variable = kappa_fission
    point = '5.913747000000001 1.3322676295501878e-15 0.0'
  []
  [cell_6_10]
    type = PointValue
    variable = kappa_fission
    point = '5.913747000000001 -1.1381011407897794 0.0'
  []
  [cell_6_11]
    type = PointValue
    variable = kappa_fission
    point = '5.913747000000001 -2.27620228157956 0.0'
  []
  [cell_6_12]
    type = PointValue
    variable = kappa_fission
    point = '5.913747000000001 -3.4143034223693407 0.0'
  []
  [cell_6_13]
    type = PointValue
    variable = kappa_fission
    point = '4.928122500000001 -3.983353992764231 0.0'
  []
  [cell_6_14]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 -4.552404563159121 0.0'
  []
  [cell_6_15]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 -5.1214551335540115 0.0'
  []
  [cell_6_16]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 -5.690505703948902 0.0'
  []
  [cell_6_17]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 -6.259556274343792 0.0'
  []
  [cell_6_18]
    type = PointValue
    variable = kappa_fission
    point = '0.0 -6.828606844738682 0.0'
  []
  [cell_6_19]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 -6.259556274343792 0.0'
  []
  [cell_6_20]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 -5.690505703948902 0.0'
  []
  [cell_6_21]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 -5.1214551335540115 0.0'
  []
  [cell_6_22]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 -4.552404563159121 0.0'
  []
  [cell_6_23]
    type = PointValue
    variable = kappa_fission
    point = '-4.928122500000001 -3.983353992764231 0.0'
  []
  [cell_6_24]
    type = PointValue
    variable = kappa_fission
    point = '-5.913747000000001 -3.4143034223693407 0.0'
  []
  [cell_6_25]
    type = PointValue
    variable = kappa_fission
    point = '-5.913747000000001 -2.27620228157956 0.0'
  []
  [cell_6_26]
    type = PointValue
    variable = kappa_fission
    point = '-5.913747000000001 -1.1381011407897794 0.0'
  []
  [cell_6_27]
    type = PointValue
    variable = kappa_fission
    point = '-5.913747000000001 1.3322676295501878e-15 0.0'
  []
  [cell_6_28]
    type = PointValue
    variable = kappa_fission
    point = '-5.913747000000001 1.138101140789782 0.0'
  []
  [cell_6_29]
    type = PointValue
    variable = kappa_fission
    point = '-5.913747000000001 2.276202281579563 0.0'
  []
  [cell_6_30]
    type = PointValue
    variable = kappa_fission
    point = '-5.913747000000001 3.4143034223693434 0.0'
  []
  [cell_6_31]
    type = PointValue
    variable = kappa_fission
    point = '-4.928122500000001 3.9833539927642336 0.0'
  []
  [cell_6_32]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 4.552404563159124 0.0'
  []
  [cell_6_33]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 5.121455133554014 0.0'
  []
  [cell_6_34]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 5.690505703948904 0.0'
  []
  [cell_6_35]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 6.259556274343795 0.0'
  []
  [cell_7_0]
    type = PointValue
    variable = kappa_fission
    point = '0.0 7.9667079855284655 0.0'
  []
  [cell_7_1]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 7.397657415133575 0.0'
  []
  [cell_7_2]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 6.828606844738685 0.0'
  []
  [cell_7_3]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 6.259556274343795 0.0'
  []
  [cell_7_4]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 5.690505703948904 0.0'
  []
  [cell_7_5]
    type = PointValue
    variable = kappa_fission
    point = '4.928122500000001 5.121455133554014 0.0'
  []
  [cell_7_6]
    type = PointValue
    variable = kappa_fission
    point = '5.913747000000001 4.552404563159124 0.0'
  []
  [cell_7_7]
    type = PointValue
    variable = kappa_fission
    point = '6.899371500000001 3.9833539927642336 0.0'
  []
  [cell_7_8]
    type = PointValue
    variable = kappa_fission
    point = '6.899371500000001 2.845252851974453 0.0'
  []
  [cell_7_9]
    type = PointValue
    variable = kappa_fission
    point = '6.899371500000001 1.7071517111846723 0.0'
  []
  [cell_7_10]
    type = PointValue
    variable = kappa_fission
    point = '6.899371500000001 0.5690505703948916 0.0'
  []
  [cell_7_11]
    type = PointValue
    variable = kappa_fission
    point = '6.899371500000001 -0.5690505703948892 0.0'
  []
  [cell_7_12]
    type = PointValue
    variable = kappa_fission
    point = '6.899371500000001 -1.70715171118467 0.0'
  []
  [cell_7_13]
    type = PointValue
    variable = kappa_fission
    point = '6.899371500000001 -2.8452528519744504 0.0'
  []
  [cell_7_14]
    type = PointValue
    variable = kappa_fission
    point = '6.899371500000001 -3.983353992764231 0.0'
  []
  [cell_7_15]
    type = PointValue
    variable = kappa_fission
    point = '5.913747000000001 -4.552404563159121 0.0'
  []
  [cell_7_16]
    type = PointValue
    variable = kappa_fission
    point = '4.928122500000001 -5.1214551335540115 0.0'
  []
  [cell_7_17]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 -5.690505703948902 0.0'
  []
  [cell_7_18]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 -6.259556274343792 0.0'
  []
  [cell_7_19]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 -6.828606844738682 0.0'
  []
  [cell_7_20]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 -7.397657415133573 0.0'
  []
  [cell_7_21]
    type = PointValue
    variable = kappa_fission
    point = '0.0 -7.966707985528463 0.0'
  []
  [cell_7_22]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 -7.397657415133573 0.0'
  []
  [cell_7_23]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 -6.828606844738682 0.0'
  []
  [cell_7_24]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 -6.259556274343792 0.0'
  []
  [cell_7_25]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 -5.690505703948902 0.0'
  []
  [cell_7_26]
    type = PointValue
    variable = kappa_fission
    point = '-4.928122500000001 -5.1214551335540115 0.0'
  []
  [cell_7_27]
    type = PointValue
    variable = kappa_fission
    point = '-5.913747000000001 -4.552404563159121 0.0'
  []
  [cell_7_28]
    type = PointValue
    variable = kappa_fission
    point = '-6.899371500000001 -3.983353992764231 0.0'
  []
  [cell_7_29]
    type = PointValue
    variable = kappa_fission
    point = '-6.899371500000001 -2.8452528519744504 0.0'
  []
  [cell_7_30]
    type = PointValue
    variable = kappa_fission
    point = '-6.899371500000001 -1.7071517111846697 0.0'
  []
  [cell_7_31]
    type = PointValue
    variable = kappa_fission
    point = '-6.899371500000001 -0.5690505703948889 0.0'
  []
  [cell_7_32]
    type = PointValue
    variable = kappa_fission
    point = '-6.899371500000001 0.5690505703948918 0.0'
  []
  [cell_7_33]
    type = PointValue
    variable = kappa_fission
    point = '-6.899371500000001 1.7071517111846726 0.0'
  []
  [cell_7_34]
    type = PointValue
    variable = kappa_fission
    point = '-6.899371500000001 2.845252851974453 0.0'
  []
  [cell_7_35]
    type = PointValue
    variable = kappa_fission
    point = '-6.899371500000001 3.9833539927642336 0.0'
  []
  [cell_7_36]
    type = PointValue
    variable = kappa_fission
    point = '-5.913747000000001 4.552404563159124 0.0'
  []
  [cell_7_37]
    type = PointValue
    variable = kappa_fission
    point = '-4.928122500000001 5.121455133554014 0.0'
  []
  [cell_7_38]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 5.690505703948904 0.0'
  []
  [cell_7_39]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 6.259556274343795 0.0'
  []
  [cell_7_40]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 6.828606844738685 0.0'
  []
  [cell_7_41]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 7.397657415133575 0.0'
  []
  [cell_8_0]
    type = PointValue
    variable = kappa_fission
    point = '0.0 9.104809126318246 0.0'
  []
  [cell_8_1]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 8.535758555923355 0.0'
  []
  [cell_8_2]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 7.966707985528465 0.0'
  []
  [cell_8_3]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 7.397657415133574 0.0'
  []
  [cell_8_4]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 6.828606844738684 0.0'
  []
  [cell_8_5]
    type = PointValue
    variable = kappa_fission
    point = '4.928122500000001 6.259556274343794 0.0'
  []
  [cell_8_6]
    type = PointValue
    variable = kappa_fission
    point = '5.913747000000001 5.6905057039489035 0.0'
  []
  [cell_8_7]
    type = PointValue
    variable = kappa_fission
    point = '6.899371500000001 5.121455133554013 0.0'
  []
  [cell_8_8]
    type = PointValue
    variable = kappa_fission
    point = '7.884996000000001 4.552404563159123 0.0'
  []
  [cell_8_9]
    type = PointValue
    variable = kappa_fission
    point = '7.884996000000001 3.4143034223693425 0.0'
  []
  [cell_8_10]
    type = PointValue
    variable = kappa_fission
    point = '7.884996000000001 2.276202281579562 0.0'
  []
  [cell_8_11]
    type = PointValue
    variable = kappa_fission
    point = '7.884996000000001 1.1381011407897812 0.0'
  []
  [cell_8_12]
    type = PointValue
    variable = kappa_fission
    point = '7.884996000000001 4.440892098500626e-16 0.0'
  []
  [cell_8_13]
    type = PointValue
    variable = kappa_fission
    point = '7.884996000000001 -1.1381011407897803 0.0'
  []
  [cell_8_14]
    type = PointValue
    variable = kappa_fission
    point = '7.884996000000001 -2.276202281579561 0.0'
  []
  [cell_8_15]
    type = PointValue
    variable = kappa_fission
    point = '7.884996000000001 -3.4143034223693416 0.0'
  []
  [cell_8_16]
    type = PointValue
    variable = kappa_fission
    point = '7.884996000000001 -4.552404563159122 0.0'
  []
  [cell_8_17]
    type = PointValue
    variable = kappa_fission
    point = '6.899371500000001 -5.121455133554012 0.0'
  []
  [cell_8_18]
    type = PointValue
    variable = kappa_fission
    point = '5.913747000000001 -5.690505703948903 0.0'
  []
  [cell_8_19]
    type = PointValue
    variable = kappa_fission
    point = '4.928122500000001 -6.259556274343793 0.0'
  []
  [cell_8_20]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 -6.828606844738683 0.0'
  []
  [cell_8_21]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 -7.3976574151335734 0.0'
  []
  [cell_8_22]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 -7.966707985528464 0.0'
  []
  [cell_8_23]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 -8.535758555923355 0.0'
  []
  [cell_8_24]
    type = PointValue
    variable = kappa_fission
    point = '0.0 -9.104809126318246 0.0'
  []
  [cell_8_25]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 -8.535758555923355 0.0'
  []
  [cell_8_26]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 -7.966707985528465 0.0'
  []
  [cell_8_27]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 -7.397657415133574 0.0'
  []
  [cell_8_28]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 -6.828606844738684 0.0'
  []
  [cell_8_29]
    type = PointValue
    variable = kappa_fission
    point = '-4.928122500000001 -6.259556274343794 0.0'
  []
  [cell_8_30]
    type = PointValue
    variable = kappa_fission
    point = '-5.913747000000001 -5.6905057039489035 0.0'
  []
  [cell_8_31]
    type = PointValue
    variable = kappa_fission
    point = '-6.899371500000001 -5.121455133554013 0.0'
  []
  [cell_8_32]
    type = PointValue
    variable = kappa_fission
    point = '-7.884996000000001 -4.552404563159123 0.0'
  []
  [cell_8_33]
    type = PointValue
    variable = kappa_fission
    point = '-7.884996000000001 -3.4143034223693425 0.0'
  []
  [cell_8_34]
    type = PointValue
    variable = kappa_fission
    point = '-7.884996000000001 -2.276202281579562 0.0'
  []
  [cell_8_35]
    type = PointValue
    variable = kappa_fission
    point = '-7.884996000000001 -1.1381011407897812 0.0'
  []
  [cell_8_36]
    type = PointValue
    variable = kappa_fission
    point = '-7.884996000000001 -4.440892098500626e-16 0.0'
  []
  [cell_8_37]
    type = PointValue
    variable = kappa_fission
    point = '-7.884996000000001 1.1381011407897803 0.0'
  []
  [cell_8_38]
    type = PointValue
    variable = kappa_fission
    point = '-7.884996000000001 2.276202281579561 0.0'
  []
  [cell_8_39]
    type = PointValue
    variable = kappa_fission
    point = '-7.884996000000001 3.4143034223693416 0.0'
  []
  [cell_8_40]
    type = PointValue
    variable = kappa_fission
    point = '-7.884996000000001 4.552404563159122 0.0'
  []
  [cell_8_41]
    type = PointValue
    variable = kappa_fission
    point = '-6.899371500000001 5.121455133554012 0.0'
  []
  [cell_8_42]
    type = PointValue
    variable = kappa_fission
    point = '-5.913747000000001 5.690505703948903 0.0'
  []
  [cell_8_43]
    type = PointValue
    variable = kappa_fission
    point = '-4.928122500000001 6.259556274343793 0.0'
  []
  [cell_8_44]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 6.828606844738683 0.0'
  []
  [cell_8_45]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 7.3976574151335734 0.0'
  []
  [cell_8_46]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 7.966707985528464 0.0'
  []
  [cell_8_47]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 8.535758555923355 0.0'
  []
  [cell_9_0]
    type = PointValue
    variable = kappa_fission
    point = '0.0 10.242910267108027 0.0'
  []
  [cell_9_1]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 9.673859696713135 0.0'
  []
  [cell_9_2]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 9.104809126318244 0.0'
  []
  [cell_9_3]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 8.535758555923353 0.0'
  []
  [cell_9_4]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 7.966707985528463 0.0'
  []
  [cell_9_5]
    type = PointValue
    variable = kappa_fission
    point = '4.928122500000001 7.397657415133573 0.0'
  []
  [cell_9_6]
    type = PointValue
    variable = kappa_fission
    point = '5.913747000000001 6.828606844738682 0.0'
  []
  [cell_9_7]
    type = PointValue
    variable = kappa_fission
    point = '6.899371500000001 6.259556274343792 0.0'
  []
  [cell_9_8]
    type = PointValue
    variable = kappa_fission
    point = '7.884996000000001 5.690505703948902 0.0'
  []
  [cell_9_9]
    type = PointValue
    variable = kappa_fission
    point = '8.870620500000001 5.1214551335540115 0.0'
  []
  [cell_9_10]
    type = PointValue
    variable = kappa_fission
    point = '8.870620500000001 3.983353992764231 0.0'
  []
  [cell_9_11]
    type = PointValue
    variable = kappa_fission
    point = '8.870620500000001 2.8452528519744504 0.0'
  []
  [cell_9_12]
    type = PointValue
    variable = kappa_fission
    point = '8.870620500000001 1.7071517111846697 0.0'
  []
  [cell_9_13]
    type = PointValue
    variable = kappa_fission
    point = '8.870620500000001 0.5690505703948889 0.0'
  []
  [cell_9_14]
    type = PointValue
    variable = kappa_fission
    point = '8.870620500000001 -0.5690505703948918 0.0'
  []
  [cell_9_15]
    type = PointValue
    variable = kappa_fission
    point = '8.870620500000001 -1.7071517111846726 0.0'
  []
  [cell_9_16]
    type = PointValue
    variable = kappa_fission
    point = '8.870620500000001 -2.845252851974453 0.0'
  []
  [cell_9_17]
    type = PointValue
    variable = kappa_fission
    point = '8.870620500000001 -3.9833539927642336 0.0'
  []
  [cell_9_18]
    type = PointValue
    variable = kappa_fission
    point = '8.870620500000001 -5.121455133554014 0.0'
  []
  [cell_9_19]
    type = PointValue
    variable = kappa_fission
    point = '7.884996000000001 -5.690505703948904 0.0'
  []
  [cell_9_20]
    type = PointValue
    variable = kappa_fission
    point = '6.899371500000001 -6.259556274343795 0.0'
  []
  [cell_9_21]
    type = PointValue
    variable = kappa_fission
    point = '5.913747000000001 -6.828606844738685 0.0'
  []
  [cell_9_22]
    type = PointValue
    variable = kappa_fission
    point = '4.928122500000001 -7.397657415133575 0.0'
  []
  [cell_9_23]
    type = PointValue
    variable = kappa_fission
    point = '3.9424980000000005 -7.9667079855284655 0.0'
  []
  [cell_9_24]
    type = PointValue
    variable = kappa_fission
    point = '2.9568735000000004 -8.535758555923357 0.0'
  []
  [cell_9_25]
    type = PointValue
    variable = kappa_fission
    point = '1.9712490000000003 -9.104809126318248 0.0'
  []
  [cell_9_26]
    type = PointValue
    variable = kappa_fission
    point = '0.9856245000000001 -9.673859696713139 0.0'
  []
  [cell_9_27]
    type = PointValue
    variable = kappa_fission
    point = '0.0 -10.24291026710803 0.0'
  []
  [cell_9_28]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 -9.673859696713139 0.0'
  []
  [cell_9_29]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 -9.104809126318248 0.0'
  []
  [cell_9_30]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 -8.535758555923357 0.0'
  []
  [cell_9_31]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 -7.966707985528466 0.0'
  []
  [cell_9_32]
    type = PointValue
    variable = kappa_fission
    point = '-4.928122500000001 -7.397657415133576 0.0'
  []
  [cell_9_33]
    type = PointValue
    variable = kappa_fission
    point = '-5.913747000000001 -6.828606844738686 0.0'
  []
  [cell_9_34]
    type = PointValue
    variable = kappa_fission
    point = '-6.899371500000001 -6.259556274343796 0.0'
  []
  [cell_9_35]
    type = PointValue
    variable = kappa_fission
    point = '-7.884996000000001 -5.690505703948905 0.0'
  []
  [cell_9_36]
    type = PointValue
    variable = kappa_fission
    point = '-8.870620500000001 -5.121455133554015 0.0'
  []
  [cell_9_37]
    type = PointValue
    variable = kappa_fission
    point = '-8.870620500000001 -3.9833539927642345 0.0'
  []
  [cell_9_38]
    type = PointValue
    variable = kappa_fission
    point = '-8.870620500000001 -2.845252851974454 0.0'
  []
  [cell_9_39]
    type = PointValue
    variable = kappa_fission
    point = '-8.870620500000001 -1.7071517111846732 0.0'
  []
  [cell_9_40]
    type = PointValue
    variable = kappa_fission
    point = '-8.870620500000001 -0.5690505703948925 0.0'
  []
  [cell_9_41]
    type = PointValue
    variable = kappa_fission
    point = '-8.870620500000001 0.5690505703948883 0.0'
  []
  [cell_9_42]
    type = PointValue
    variable = kappa_fission
    point = '-8.870620500000001 1.707151711184669 0.0'
  []
  [cell_9_43]
    type = PointValue
    variable = kappa_fission
    point = '-8.870620500000001 2.8452528519744495 0.0'
  []
  [cell_9_44]
    type = PointValue
    variable = kappa_fission
    point = '-8.870620500000001 3.98335399276423 0.0'
  []
  [cell_9_45]
    type = PointValue
    variable = kappa_fission
    point = '-8.870620500000001 5.121455133554011 0.0'
  []
  [cell_9_46]
    type = PointValue
    variable = kappa_fission
    point = '-7.884996000000001 5.690505703948901 0.0'
  []
  [cell_9_47]
    type = PointValue
    variable = kappa_fission
    point = '-6.899371500000001 6.259556274343791 0.0'
  []
  [cell_9_48]
    type = PointValue
    variable = kappa_fission
    point = '-5.913747000000001 6.828606844738681 0.0'
  []
  [cell_9_49]
    type = PointValue
    variable = kappa_fission
    point = '-4.928122500000001 7.397657415133572 0.0'
  []
  [cell_9_50]
    type = PointValue
    variable = kappa_fission
    point = '-3.9424980000000005 7.966707985528462 0.0'
  []
  [cell_9_51]
    type = PointValue
    variable = kappa_fission
    point = '-2.9568735000000004 8.535758555923353 0.0'
  []
  [cell_9_52]
    type = PointValue
    variable = kappa_fission
    point = '-1.9712490000000003 9.104809126318244 0.0'
  []
  [cell_9_53]
    type = PointValue
    variable = kappa_fission
    point = '-0.9856245000000001 9.673859696713135 0.0'
  []
[]
