.class public Lorg/kustom/api/preset/glide/PresetFileModuleFactory;
.super Ljava/lang/Object;
.source "PresetFileModuleFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
        "<",
        "Lorg/kustom/api/preset/PresetFile;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/api/preset/glide/PresetFileModuleFactory;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 2
    .param p1, "unused"    # Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lorg/kustom/api/preset/PresetFile;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lorg/kustom/api/preset/glide/PresetFileModelLoader;

    iget-object v1, p0, Lorg/kustom/api/preset/glide/PresetFileModuleFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/kustom/api/preset/glide/PresetFileModelLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public teardown()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
