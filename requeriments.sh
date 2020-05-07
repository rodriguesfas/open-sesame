echo "Download OpenSesame Python3.."
git clone https://github.com/rodriguesfas/open-sesame.git

echo "Create directory resources."
mv open-sesame resources

echo "Install DyNet.."
pip install dynet

echo "Install NLTK.."
pip install nltk

echo "Install NLTK WordNet.."
python -m nltk.downloader averaged_perceptron_tagger wordnet

cd resources
echo "Create directory data."
mkdir data

echo "Download FrameNet 1.7.."
wget https://drive.google.com/u/0/uc?export=download&confirm=XwOZ&id=1s4SDt_yDhT8qFs1MZJbeFf-XeiNPNnx7
unzip fndata-1.7.zip

echo "Download Glove.."
wget http://nlp.stanford.edu/data/glove.6B.zip
unzip glove.6B.zip

echo "Config path Glove"


echo "Preprocess the data.."
python -m sesame.preprocess

echo "Create directory logs."
makdir logs

echo "Download Models Arg ID.."
wget https://drive.google.com/u/0/uc?export=download&confirm=joDy&id=1ys-DIGhJSHgt8VjstMtlkPnYqtlzMSHe

echo "Download Models Frame ID.."
wget https://drive.google.com/u/0/uc?export=download&confirm=BUSv&id=1me1V0CrZF5HVWiDBqZ4LHZVSpsWfW3-8

echo "Download Models Target ID.."
wget https://drive.google.com/u/0/uc?export=download&confirm=BW4C&id=1sS0OPw1uYxeOUK0drkvfZsFkRNgnVUAC

echo "Test"
python -m sesame.targetid --mode test --model_name fn1.7-pretrained-targetid
python -m sesame.frameid --mode test --model_name fn1.7-pretrained-frameid
python -m sesame.argid --mode test --model_name fn1.7-pretrained-argid