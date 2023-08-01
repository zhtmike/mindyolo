import os
import globox

coco = globox.AnnotationSet.from_coco('/home/mindocr/mikecheung/data/PubLayNet/publaynet/train.json')
os.makedirs("/home/mindocr/mikecheung/data/PubLayNet/publaynet/labels/train2017", exist_ok=True)
coco.save_yolo("/home/mindocr/mikecheung/data/PubLayNet/publaynet/labels/train2017", label_to_id={"title": 0, "text": 1, "figure": 2, "table": 3, "list": 4})
# root = "/home/mindocr/mikecheung/data/PubLayNet/publaynet/images/val2017"
# with open("/home/mindocr/mikecheung/data/PubLayNet/publaynet/val2017.txt", "w") as f:
#     for path in os.listdir(root):
#         if path.endswith(".jpg"):
#             f.write(os.path.abspath(os.path.join(root, path)) + '\n')
