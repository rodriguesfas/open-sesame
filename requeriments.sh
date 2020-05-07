echo "Download OpenSesame"
git clone https://github.com/swabhs/open-sesame.git

mv open-sesame resources

echo "Install DyNet"
pip install dynet

echo "Install NLTK"
pip install nltk

echo "Install NLTK WordNet"
python -m nltk.downloader averaged_perceptron_tagger wordnet

cd resources
mkdir data

echo "Download FrameNet 1.7"
wget https://drive.google.com/u/0/uc?export=download&confirm=XwOZ&id=1s4SDt_yDhT8qFs1MZJbeFf-XeiNPNnx7
unzip fndata-1.7.zip

echo "Download Glove"
wget http://nlp.stanford.edu/data/glove.6B.zip
unzip glove.6B.zip

echo "Config path Glove"
