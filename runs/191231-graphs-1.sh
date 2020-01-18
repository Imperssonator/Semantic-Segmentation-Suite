# Start in CC/scatteract/
python generate_random_scatter.py /Users/nils/CC/Semantic-Segmentation-Suite/data/191231-graphs
python standardize_dataset_res.py /Users/nils/CC/Semantic-Segmentation-Suite/data/191231-graphs
cd ..
cd Semantic-Segmentation-Suite/
python train.py --dataset data/191231-graphs_512x512 --batch_size 10 --num_val_images 50
python predict.py --image data/191231-graphs_512x512/test/000034.png --model "FC-DenseNet56" --checkpoint_path checkpoints/latest_model_FC-DenseNet56_data/191231-graphs_512x512.ckpt --dataset data/191231-graphs_512x512/

# Using MobileNet
python train.py --dataset data/191231-graphs_512x512 --batch_size 20 --num_val_images 20 --model "MobileUNet"
python predict.py --image data/191231-graphs_512x512/test/000034.png --model "MobileUNet" --checkpoint_path checkpoints/latest_model_FC-DenseNet56_data/191231-graphs_512x512.ckpt --dataset data/191231-graphs_512x512/