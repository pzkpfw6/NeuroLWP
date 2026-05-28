.class public Lorg/kustom/api/preset/glide/PresetFileModelLoader;
.super Ljava/lang/Object;
.source "PresetFileModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<",
        "Lorg/kustom/api/preset/PresetFile;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_ORIENTATION_LAND:Ljava/lang/String; = "org.kustom.glide.load.orientation"

.field public static final ORIENTATION_LAND:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-string v0, "org.kustom.glide.load.orientation"

    const/4 v1, 0x0

    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lorg/kustom/api/preset/glide/PresetFileModelLoader$$Lambda$0;->$instance:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/Option;->disk(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lorg/kustom/api/preset/glide/PresetFileModelLoader;->ORIENTATION_LAND:Lcom/bumptech/glide/load/Option;

    .line 29
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/api/preset/glide/PresetFileModelLoader;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static final synthetic lambda$static$0$PresetFileModelLoader([BLjava/lang/Boolean;Ljava/security/MessageDigest;)V
    .locals 1
    .param p0, "keyBytes"    # [B
    .param p1, "value"    # Ljava/lang/Boolean;
    .param p2, "digest"    # Ljava/security/MessageDigest;

    .prologue
    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 32
    :cond_0
    return-void
.end method

.method public static landscape(Lcom/bumptech/glide/request/RequestOptions;Z)V
    .locals 2
    .param p0, "options"    # Lcom/bumptech/glide/request/RequestOptions;
    .param p1, "value"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation build Lcom/bumptech/glide/annotation/GlideOption;
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lorg/kustom/api/preset/glide/PresetFileModelLoader;->ORIENTATION_LAND:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 19
    check-cast p1, Lorg/kustom/api/preset/PresetFile;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/kustom/api/preset/glide/PresetFileModelLoader;->buildLoadData(Lorg/kustom/api/preset/PresetFile;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object v0

    return-object v0
.end method

.method public buildLoadData(Lorg/kustom/api/preset/PresetFile;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 4
    .param p1, "file"    # Lorg/kustom/api/preset/PresetFile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "opts"    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kustom/api/preset/PresetFile;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance v2, Lorg/kustom/api/preset/glide/PresetFileKey;

    invoke-direct {v2, p1}, Lorg/kustom/api/preset/glide/PresetFileKey;-><init>(Lorg/kustom/api/preset/PresetFile;)V

    new-instance v3, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;

    iget-object v0, p0, Lorg/kustom/api/preset/glide/PresetFileModelLoader;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, p1}, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;-><init>(Landroid/content/Context;Lorg/kustom/api/preset/PresetFile;)V

    sget-object v0, Lorg/kustom/api/preset/glide/PresetFileModelLoader;->ORIENTATION_LAND:Lcom/bumptech/glide/load/Option;

    .line 44
    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->setLandscape(Z)Lorg/kustom/api/preset/glide/PresetFileDataFetcher;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    .line 41
    return-object v1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    check-cast p1, Lorg/kustom/api/preset/PresetFile;

    invoke-virtual {p0, p1}, Lorg/kustom/api/preset/glide/PresetFileModelLoader;->handles(Lorg/kustom/api/preset/PresetFile;)Z

    move-result v0

    return v0
.end method

.method public handles(Lorg/kustom/api/preset/PresetFile;)Z
    .locals 1
    .param p1, "file"    # Lorg/kustom/api/preset/PresetFile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method
