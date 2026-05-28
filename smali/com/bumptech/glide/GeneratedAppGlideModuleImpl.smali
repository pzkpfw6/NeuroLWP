.class final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source "GeneratedAppGlideModuleImpl.java"


# instance fields
.field private final appGlideModule:Lorg/kustom/skin/dashboard/glide/KustomAppGlideModule;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    .line 19
    new-instance v0, Lorg/kustom/skin/dashboard/glide/KustomAppGlideModule;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/KustomAppGlideModule;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lorg/kustom/skin/dashboard/glide/KustomAppGlideModule;

    .line 20
    const-string v0, "Glide"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    const-string v0, "Glide"

    const-string v1, "Discovered AppGlideModule from annotation: org.kustom.skin.dashboard.glide.KustomAppGlideModule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const-string v0, "Glide"

    const-string v1, "Discovered LibraryGlideModule from annotation: org.kustom.api.preset.glide.PresetFileModule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Lcom/bumptech/glide/GlideBuilder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lorg/kustom/skin/dashboard/glide/KustomAppGlideModule;

    invoke-virtual {v0, p1, p2}, Lorg/kustom/skin/dashboard/glide/KustomAppGlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    .line 29
    return-void
.end method

.method public getExcludedModuleClasses()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getRequestManagerFactory()Lcom/bumptech/glide/GeneratedRequestManagerFactory;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/bumptech/glide/GeneratedRequestManagerFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/GeneratedRequestManagerFactory;-><init>()V

    return-object v0
.end method

.method bridge synthetic getRequestManagerFactory()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->getRequestManagerFactory()Lcom/bumptech/glide/GeneratedRequestManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method public isManifestParsingEnabled()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lorg/kustom/skin/dashboard/glide/KustomAppGlideModule;

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/KustomAppGlideModule;->isManifestParsingEnabled()Z

    move-result v0

    return v0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "glide"    # Lcom/bumptech/glide/Glide;
    .param p3, "registry"    # Lcom/bumptech/glide/Registry;

    .prologue
    .line 33
    new-instance v0, Lorg/kustom/api/preset/glide/PresetFileModule;

    invoke-direct {v0}, Lorg/kustom/api/preset/glide/PresetFileModule;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lorg/kustom/api/preset/glide/PresetFileModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lorg/kustom/skin/dashboard/glide/KustomAppGlideModule;

    invoke-virtual {v0, p1, p2, p3}, Lorg/kustom/skin/dashboard/glide/KustomAppGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 35
    return-void
.end method
