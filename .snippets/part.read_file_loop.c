
FILE* file = fopen(<++>, "rb"); 

char line[256];
    
fseek(file,0,SEEK_END);
long filesize = ftell(file);
fseek(file,0,SEEK_SET);
    
char *buffer = calloc(filesize, sizeof(char*));

while (fgets(line, sizeof(line), file)) {
    
}

fclose(file);
