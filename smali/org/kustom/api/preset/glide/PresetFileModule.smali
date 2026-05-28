.class public Lorg/kustom/api/preset/glide/PresetFileModule;
.super Lcom/bumptech/glide/module/LibraryGlideModule;
.source "PresetFileModule.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/kustom/api/preset/glide/PresetFileModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/kustom/api/preset/glide/PresetFileModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/bumptech/glide/module/LibraryGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "glide"    # Lcom/bumptech/glide/Glide;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "registry"    # Lcom/bumptech/glide/Registry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    sget-object v0, Lorg/kustom/api/preset/glide/PresetFileModule;->TAG:Ljava/lang/String;

    const-string v1, "Registering PresetFile module"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-class v0, Lorg/kustom/api/preset/PresetFile;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lorg/kustom/api/preset/glide/PresetFileModuleFactory;

    invoke-direct {v2, p1}, Lorg/kustom/api/preset/glide/PresetFileModuleFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v0, v1, v2}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 24
    return-void
.end method
