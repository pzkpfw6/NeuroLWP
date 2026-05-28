.class public Lorg/kustom/api/dashboard/config/KustomEnv;
.super Ljava/lang/Object;
.source "KustomEnv.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEditorActivity:Ljava/lang/String;

.field private final mExtension:Ljava/lang/String;

.field private mFiles:[Ljava/lang/String;

.field private final mFolder:Ljava/lang/String;

.field private final mPkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lorg/kustom/api/dashboard/config/KustomEnv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/kustom/api/dashboard/config/KustomEnv;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "editorActivity"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/kustom/api/dashboard/config/KustomEnv;->mExtension:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lorg/kustom/api/dashboard/config/KustomEnv;->mFolder:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lorg/kustom/api/dashboard/config/KustomEnv;->mPkg:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lorg/kustom/api/dashboard/config/KustomEnv;->mEditorActivity:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getEditorActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/kustom/api/dashboard/config/KustomEnv;->mEditorActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/kustom/api/dashboard/config/KustomEnv;->mExtension:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getFiles(Landroid/content/Context;)[Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lorg/kustom/api/dashboard/config/KustomEnv;->mFiles:[Ljava/lang/String;

    if-nez v6, :cond_3

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 49
    .local v0, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/config/KustomEnv;->getFolder()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "files":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 51
    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v2, v3, v5

    .line 52
    .local v2, "file":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/kustom/api/dashboard/config/KustomEnv;->getExtension()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/kustom/api/dashboard/config/KustomEnv;->getExtension()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 54
    :cond_0
    const-string v7, "%s/%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lorg/kustom/api/dashboard/config/KustomEnv;->getFolder()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v5, Lorg/kustom/api/dashboard/config/KustomEnv;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to list folder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/kustom/api/dashboard/config/KustomEnv;->getFolder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lorg/kustom/api/dashboard/config/KustomEnv;->mFiles:[Ljava/lang/String;

    .line 62
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v5, p0, Lorg/kustom/api/dashboard/config/KustomEnv;->mFiles:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v5

    .line 45
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/kustom/api/dashboard/config/KustomEnv;->mFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/kustom/api/dashboard/config/KustomEnv;->mPkg:Ljava/lang/String;

    return-object v0
.end method
