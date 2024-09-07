resource "null_resource" "main"{
 count = 3
}

for i in a,b,c ; do
    echo $i
done