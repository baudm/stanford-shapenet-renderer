#!/bin/sh
#02691156 02834778 02858304 02876657 02924116 02958343 03001627 03201208 03790512 04256520 04468005 04405762

#aeroplane         02691156
#bicycle         02834778
#boat             02858304
#bottle         02876657
#bus             02924116
#car             02958343
#chair             03001627
#diningtable     03201208 -> 04379243
#motorbike        03790512
#sofa             04256520
#train             04468005
#tvmonitor         04405762 -> 03201208

#counts
#4045
#59
#1137
#498
#939
#3514
#6778
#8436
#337
#3173
#389
#1093

# target: 2000 images per cat
find /mnt/data/datasets/shapenet/ShapeNetCore.v2/02691156 -name *.obj | head -n 2000 | xargs  -n1 -P4 -I {} blender --background --python render_blender.py -- --views 1 --output_folder /mnt/data/datasets/vignet/aeroplane --cat aeroplane {}
find /mnt/data/datasets/shapenet/ShapeNetCore.v2/02834778 -name *.obj | head -n 2000 | xargs  -n1 -P4 -I {} blender --background --python render_blender.py -- --views 34 --output_folder /mnt/data/datasets/vignet/bicycle --cat bicycle {}
find /mnt/data/datasets/shapenet/ShapeNetCore.v2/02858304 -name *.obj | head -n 2000 | xargs  -n1 -P4 -I {} blender --background --python render_blender.py -- --views 2 --output_folder /mnt/data/datasets/vignet/boat --cat boat {}
find /mnt/data/datasets/shapenet/ShapeNetCore.v2/02876657 -name *.obj | head -n 2000 | xargs  -n1 -P4 -I {} blender --background --python render_blender.py -- --views 5 --output_folder /mnt/data/datasets/vignet/bottle --cat bottle {}
find /mnt/data/datasets/shapenet/ShapeNetCore.v2/02924116 -name *.obj | head -n 2000 | xargs  -n1 -P4 -I {} blender --background --python render_blender.py -- --views 3 --output_folder /mnt/data/datasets/vignet/bus --cat bus {}
find /mnt/data/datasets/shapenet/ShapeNetCore.v2/02958343 -name *.obj | head -n 2000 | xargs  -n1 -P4 -I {} blender --background --python render_blender.py -- --views 1 --output_folder /mnt/data/datasets/vignet/car --cat car {}
find /mnt/data/datasets/shapenet/ShapeNetCore.v2/03001627 -name *.obj | head -n 2000 | xargs  -n1 -P4 -I {} blender --background --python render_blender.py -- --views 1 --output_folder /mnt/data/datasets/vignet/chair --cat chair {}
find /mnt/data/datasets/shapenet/ShapeNetCore.v2/04379243 -name *.obj | head -n 2000 | xargs  -n1 -P4 -I {} blender --background --python render_blender.py -- --views 1 --output_folder /mnt/data/datasets/vignet/diningtable--cat diningtable {}
find /mnt/data/datasets/shapenet/ShapeNetCore.v2/03790512 -name *.obj | head -n 2000 | xargs  -n1 -P4 -I {} blender --background --python render_blender.py -- --views 6 --output_folder /mnt/data/datasets/vignet/motorbike --cat motorbike {}
find /mnt/data/datasets/shapenet/ShapeNetCore.v2/04256520 -name *.obj | head -n 2000 | xargs  -n1 -P4 -I {} blender --background --python render_blender.py -- --views 1 --output_folder /mnt/data/datasets/vignet/sofa --cat sofa {}
find /mnt/data/datasets/shapenet/ShapeNetCore.v2/04468005 -name *.obj | head -n 2000 | xargs  -n1 -P4 -I {} blender --background --python render_blender.py -- --views 6 --output_folder /mnt/data/datasets/vignet/train --cat train {}
find /mnt/data/datasets/shapenet/ShapeNetCore.v2/03201208 -name *.obj | head -n 2000 | xargs  -n1 -P4 -I {} blender --background --python render_blender.py -- --views 2 --output_folder /mnt/data/datasets/vignet/tvmonitor --cat tvmonitor {}
