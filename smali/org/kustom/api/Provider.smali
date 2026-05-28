.class public Lorg/kustom/api/Provider;
.super Landroid/content/ContentProvider;
.source "Provider.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field public static final ACTION_INFO:Ljava/lang/String; = "info"

.field public static final ACTION_LIST:Ljava/lang/String; = "list"

.field public static final ARCHIVE_REGEXP:Ljava/lang/String; = ".*\\.(k...)(\\.zip)?(/.*)?"

.field private static final PREF_LAST_UPGRADE:Ljava/lang/String; = "last_upgrade"

.field private static final SHARED_PREFS:Ljava/lang/String; = "kustom_provider"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/kustom/api/Provider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/kustom/api/Provider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static buildContentUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "archivePath"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string v0, "content://%s/%s/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "archivePath":Ljava/lang/String;
    :cond_0
    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildFileInfo(Landroid/database/Cursor;)Lorg/kustom/api/FileInfo;
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 219
    new-instance v0, Lorg/kustom/api/FileInfo;

    invoke-direct {v0, p0}, Lorg/kustom/api/FileInfo;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public static buildQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "archivePath"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string v0, "content://%s/%s/%s/%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2    # "archivePath":Ljava/lang/String;
    :cond_0
    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getArchiveFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p1, "archivePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const-string v4, ""

    invoke-direct {p0, p1, v4}, Lorg/kustom/api/Provider;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 224
    .local v3, "zipCacheFile":Ljava/io/File;
    invoke-direct {p0}, Lorg/kustom/api/Provider;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 225
    .local v0, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 226
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 227
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 228
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2, v3}, Lorg/kustom/api/CacheHelper;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    .line 230
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 231
    return-object v3
.end method

.method private getArchivePath(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    .line 286
    .local v1, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 287
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 288
    .local v2, "segment":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 289
    const-string v3, ".*\\.(k...)(\\.zip)?(/.*)?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    :cond_0
    invoke-direct {p0, v1}, Lorg/kustom/api/Provider;->trimPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .end local v2    # "segment":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 293
    .restart local v2    # "segment":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v2    # "segment":Ljava/lang/String;
    :cond_3
    const-string v3, ""

    goto :goto_1
.end method

.method private getAssets()Landroid/content/res/AssetManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/kustom/api/Provider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method private getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "archivePath"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/kustom/api/CacheHelper;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "cacheFileName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/kustom/api/Provider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "provider"

    invoke-static {v1, v2, v0}, Lorg/kustom/api/CacheHelper;->getCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private getFilePath(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    .line 302
    .local v1, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 303
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    .local v2, "segment":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    const-string v3, ".*\\.(k...)(\\.zip)?(/.*)?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    const-string v1, ""

    .line 302
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    invoke-direct {p0, v2}, Lorg/kustom/api/Provider;->trimPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 313
    .end local v2    # "segment":Ljava/lang/String;
    :goto_1
    return-object v3

    :cond_2
    invoke-direct {p0, v1}, Lorg/kustom/api/Provider;->trimPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private listFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "archivePath"    # Ljava/lang/String;
    .param p2, "folderPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 240
    sget-object v7, Lorg/kustom/api/Provider;->TAG:Ljava/lang/String;

    const-string v8, "List archive://%s, folder://%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v11

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 242
    .local v3, "result":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 245
    .local v5, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v7, ".*\\.(k...)(\\.zip)?(/.*)?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 246
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {p0, p1}, Lorg/kustom/api/Provider;->getArchiveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .local v6, "zf":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 248
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 249
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 251
    .local v4, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 252
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 271
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "ze":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 272
    .end local v6    # "zf":Ljava/util/zip/ZipFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "zf":Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    if-eqz v5, :cond_1

    .line 275
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 280
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    sget-object v7, Lorg/kustom/api/Provider;->TAG:Ljava/lang/String;

    const-string v8, "List returned %d items"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object v3

    .line 255
    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .restart local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v4    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v6    # "zf":Ljava/util/zip/ZipFile;
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 256
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 274
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "ze":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v7

    move-object v5, v6

    .end local v6    # "zf":Ljava/util/zip/ZipFile;
    .restart local v5    # "zf":Ljava/util/zip/ZipFile;
    :goto_3
    if-eqz v5, :cond_3

    .line 275
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 278
    :cond_3
    :goto_4
    throw v7

    .end local v5    # "zf":Ljava/util/zip/ZipFile;
    .restart local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v6    # "zf":Ljava/util/zip/ZipFile;
    :cond_4
    move-object v5, v6

    .line 274
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6    # "zf":Ljava/util/zip/ZipFile;
    .restart local v5    # "zf":Ljava/util/zip/ZipFile;
    :cond_5
    :goto_5
    if-eqz v5, :cond_1

    .line 275
    :try_start_6
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 276
    :catch_1
    move-exception v7

    goto :goto_2

    .line 262
    :cond_6
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 263
    invoke-direct {p0}, Lorg/kustom/api/Provider;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 264
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lorg/kustom/api/Provider;->trimPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 265
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/kustom/api/Provider;->trimPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 271
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v0

    goto :goto_1

    .line 268
    :cond_7
    invoke-direct {p0}, Lorg/kustom/api/Provider;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    .line 274
    :catchall_1
    move-exception v7

    goto :goto_3

    .line 276
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto/16 :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    goto :goto_4
.end method

.method private trimPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 317
    const-string v0, "^/+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/+$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/+"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selection"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "args"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 90
    sget-object v4, Lorg/kustom/api/Provider;->TAG:Ljava/lang/String;

    const-string v5, "Provider started"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lorg/kustom/api/Provider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "kustom_provider"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 94
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v4, "last_upgrade"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 95
    .local v2, "lastUpgradedRelease":I
    invoke-virtual {p0}, Lorg/kustom/api/Provider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 96
    invoke-virtual {p0}, Lorg/kustom/api/Provider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 97
    .local v0, "currentRelease":I
    if-eq v2, v0, :cond_0

    .line 98
    sget-object v4, Lorg/kustom/api/Provider;->TAG:Ljava/lang/String;

    const-string v5, "Clearing cache after upgrade"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lorg/kustom/api/Provider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "provider"

    invoke-static {v4, v5}, Lorg/kustom/api/CacheHelper;->clearCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_upgrade"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0    # "currentRelease":I
    .end local v2    # "lastUpgradedRelease":I
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/kustom/api/Provider;->TAG:Ljava/lang/String;

    const-string v5, "Unable to check for upgrade"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/kustom/api/Provider;->getArchivePath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "archivePath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/kustom/api/Provider;->getFilePath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "filePath":Ljava/lang/String;
    sget-object v11, Lorg/kustom/api/Provider;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Open: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v7, 0x0

    .line 117
    .local v7, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 119
    .local v9, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    invoke-direct {p0}, Lorg/kustom/api/Provider;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 120
    .local v1, "assets":Landroid/content/res/AssetManager;
    invoke-direct {p0, v0, v6}, Lorg/kustom/api/Provider;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 121
    .local v2, "cacheFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 123
    .local v3, "cacheGood":Z
    const-string v11, ".*\\.(k...)(\\.zip)?(/.*)?"

    invoke-virtual {v0, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 124
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 125
    invoke-static {v7, v2}, Lorg/kustom/api/CacheHelper;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    .line 126
    const/4 v3, 0x1

    .line 140
    :goto_0
    if-eqz v3, :cond_4

    const/high16 v11, 0x10000000

    invoke-static {v2, v11}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 144
    if-eqz v7, :cond_0

    .line 145
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 148
    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    .line 149
    :try_start_2
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 140
    :cond_1
    :goto_2
    return-object v11

    .line 128
    :cond_2
    :try_start_3
    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {p0, v0}, Lorg/kustom/api/Provider;->getArchiveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    .end local v9    # "zf":Ljava/util/zip/ZipFile;
    .local v10, "zf":Ljava/util/zip/ZipFile;
    :try_start_4
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 130
    .local v5, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 131
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 132
    .local v8, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 133
    invoke-virtual {v10, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11, v2}, Lorg/kustom/api/CacheHelper;->copy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    const/4 v3, 0x1

    move-object v9, v10

    .line 135
    .end local v10    # "zf":Ljava/util/zip/ZipFile;
    .restart local v9    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 144
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v8    # "ze":Ljava/util/zip/ZipEntry;
    :cond_4
    if-eqz v7, :cond_5

    .line 145
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 148
    :cond_5
    :goto_3
    if-eqz v9, :cond_6

    .line 149
    :try_start_6
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 153
    .end local v1    # "assets":Landroid/content/res/AssetManager;
    .end local v2    # "cacheFile":Ljava/io/File;
    .end local v3    # "cacheGood":Z
    :cond_6
    :goto_4
    new-instance v11, Ljava/io/FileNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No file supported by provider at: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 141
    :catch_0
    move-exception v11

    :goto_5
    move-object v4, v11

    .line 142
    .local v4, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    sget-object v11, Lorg/kustom/api/Provider;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to open file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 144
    if-eqz v7, :cond_7

    .line 145
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 148
    :cond_7
    :goto_7
    if-eqz v9, :cond_6

    .line 149
    :try_start_9
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 150
    :catch_1
    move-exception v11

    goto :goto_4

    .line 144
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_8
    if-eqz v7, :cond_8

    .line 145
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 148
    :cond_8
    :goto_9
    if-eqz v9, :cond_9

    .line 149
    :try_start_b
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 152
    :cond_9
    :goto_a
    throw v11

    .line 141
    :catch_2
    move-exception v11

    :goto_b
    move-object v4, v11

    goto :goto_6

    .line 146
    .restart local v1    # "assets":Landroid/content/res/AssetManager;
    .restart local v2    # "cacheFile":Ljava/io/File;
    .restart local v3    # "cacheGood":Z
    :catch_3
    move-exception v12

    goto/16 :goto_1

    .line 150
    :catch_4
    move-exception v12

    goto/16 :goto_2

    .line 146
    :catch_5
    move-exception v11

    goto :goto_3

    .line 150
    :catch_6
    move-exception v11

    goto :goto_4

    .line 146
    .end local v1    # "assets":Landroid/content/res/AssetManager;
    .end local v2    # "cacheFile":Ljava/io/File;
    .end local v3    # "cacheGood":Z
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v11

    goto :goto_7

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v12

    goto :goto_9

    .line 150
    :catch_9
    move-exception v12

    goto :goto_a

    .line 144
    .end local v9    # "zf":Ljava/util/zip/ZipFile;
    .restart local v1    # "assets":Landroid/content/res/AssetManager;
    .restart local v2    # "cacheFile":Ljava/io/File;
    .restart local v3    # "cacheGood":Z
    .restart local v10    # "zf":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "zf":Ljava/util/zip/ZipFile;
    .restart local v9    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_8

    .line 141
    .end local v9    # "zf":Ljava/util/zip/ZipFile;
    .restart local v10    # "zf":Ljava/util/zip/ZipFile;
    :catch_a
    move-exception v11

    move-object v9, v10

    .end local v10    # "zf":Ljava/util/zip/ZipFile;
    .restart local v9    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_b

    .end local v9    # "zf":Ljava/util/zip/ZipFile;
    .restart local v10    # "zf":Ljava/util/zip/ZipFile;
    :catch_b
    move-exception v11

    move-object v9, v10

    .end local v10    # "zf":Ljava/util/zip/ZipFile;
    .restart local v9    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_5

    .end local v9    # "zf":Ljava/util/zip/ZipFile;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v10    # "zf":Ljava/util/zip/ZipFile;
    :cond_a
    move-object v9, v10

    .end local v10    # "zf":Ljava/util/zip/ZipFile;
    .restart local v9    # "zf":Ljava/util/zip/ZipFile;
    goto/16 :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "sortOrder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 160
    sget-object v9, Lorg/kustom/api/Provider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_0

    .line 164
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid arguments in Uri: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 168
    :cond_0
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 169
    .local v8, "segments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 170
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, v8}, Lorg/kustom/api/Provider;->getArchivePath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "archivePath":Ljava/lang/String;
    invoke-direct {p0, v8}, Lorg/kustom/api/Provider;->getFilePath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "folderPath":Ljava/lang/String;
    const-string v9, "list"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 176
    invoke-direct {p0, v1, v4}, Lorg/kustom/api/Provider;->listFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 177
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Landroid/database/MatrixCursor;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "filename"

    aput-object v11, v9, v10

    invoke-direct {v3, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 178
    .local v3, "cursor":Landroid/database/MatrixCursor;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 179
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 180
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->moveToNext()Z

    goto :goto_0

    .line 182
    .end local v7    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 202
    .end local v3    # "cursor":Landroid/database/MatrixCursor;
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v3

    .line 187
    :cond_2
    const-string v9, "info"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 188
    sget-object v9, Lorg/kustom/api/Provider;->TAG:Ljava/lang/String;

    const-string v10, "Info archive://%s, folder://%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, v1, v4}, Lorg/kustom/api/Provider;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 191
    .local v2, "cacheFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_4

    const/4 v5, 0x1

    .line 192
    .local v5, "isValid":Z
    :goto_2
    if-nez v5, :cond_3

    .line 193
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 194
    invoke-direct {p0, v1, v4}, Lorg/kustom/api/Provider;->listFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    const/4 v5, 0x1

    .line 197
    :cond_3
    :goto_3
    invoke-direct {p0, v1, v4}, Lorg/kustom/api/Provider;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-static {v5, v9}, Lorg/kustom/api/FileInfo;->buildCursor(ZLjava/io/File;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_1

    .line 191
    .end local v5    # "isValid":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 194
    .restart local v5    # "isValid":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 201
    .end local v2    # "cacheFile":Ljava/io/File;
    .end local v5    # "isValid":Z
    :cond_6
    sget-object v9, Lorg/kustom/api/Provider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported operation, uri: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "args"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method
