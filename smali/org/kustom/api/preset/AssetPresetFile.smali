.class public Lorg/kustom/api/preset/AssetPresetFile;
.super Lorg/kustom/api/preset/PresetFile;
.source "AssetPresetFile.java"


# instance fields
.field private final mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p1}, Lorg/kustom/api/preset/AssetPresetFile;->extractNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/kustom/api/preset/AssetPresetFile;->extractExtFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/kustom/api/preset/PresetFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lorg/kustom/api/preset/AssetPresetFile;->mFilePath:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/kustom/api/preset/AssetPresetFile;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lorg/kustom/api/preset/AssetPresetFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
