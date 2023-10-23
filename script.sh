# crie o arquivo
vi script.sh

# conteúdo do script

cd /tmp; mkdir layer; cd layer
touch requirements.txt
echo "requests==2.28.1\npytz" > requirements.txt
mkdir -p temp/python && cd temp/python
pip3 install -r ../../requirements.txt -t .
cd ..
zip -r9 ../requests.zip .
mv ../requests.zip /tmp/
rm -r /tmp/layer/

# permissão para o arquivo
chmod +x script.sh

# agora seja feliz e marcha.