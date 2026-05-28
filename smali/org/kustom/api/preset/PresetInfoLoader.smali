.class public Lorg/kustom/api/preset/PresetInfoLoader;
.super Ljava/lang/Object;
.source "PresetInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;,
        Lorg/kustom/api/preset/PresetInfoLoader$Callback;
    }
.end annotation


# static fields
.field private static final sPresetInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/kustom/api/preset/PresetInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFile:Lorg/kustom/api/preset/PresetFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/kustom/api/preset/PresetInfoLoader;->sPresetInfoCache:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lorg/kustom/api/preset/PresetFile;)V
    .locals 0
    .param p1, "file"    # Lorg/kustom/api/preset/PresetFile;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/kustom/api/preset/PresetInfoLoader;->mFile:Lorg/kustom/api/preset/PresetFile;

    .line 26
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lorg/kustom/api/preset/PresetInfoLoader;->sPresetInfoCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static create(Lorg/kustom/api/preset/PresetFile;)Lorg/kustom/api/preset/PresetInfoLoader;
    .locals 1
    .param p0, "file"    # Lorg/kustom/api/preset/PresetFile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    new-instance v0, Lorg/kustom/api/preset/PresetInfoLoader;

    invoke-direct {v0, p0}, Lorg/kustom/api/preset/PresetInfoLoader;-><init>(Lorg/kustom/api/preset/PresetFile;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/content/Context;Lorg/kustom/api/preset/PresetInfoLoader$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lorg/kustom/api/preset/PresetInfoLoader$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    sget-object v1, Lorg/kustom/api/preset/PresetInfoLoader;->sPresetInfoCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lorg/kustom/api/preset/PresetInfoLoader;->sPresetInfoCache:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/kustom/api/preset/PresetInfoLoader;->mFile:Lorg/kustom/api/preset/PresetFile;

    invoke-virtual {v2}, Lorg/kustom/api/preset/PresetFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lorg/kustom/api/preset/PresetInfoLoader;->sPresetInfoCache:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/kustom/api/preset/PresetInfoLoader;->mFile:Lorg/kustom/api/preset/PresetFile;

    invoke-virtual {v2}, Lorg/kustom/api/preset/PresetFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/kustom/api/preset/PresetInfo;

    invoke-interface {p2, v0}, Lorg/kustom/api/preset/PresetInfoLoader$Callback;->onInfoLoaded(Lorg/kustom/api/preset/PresetInfo;)V

    .line 37
    :goto_0
    monitor-exit v1

    .line 38
    return-void

    .line 36
    :cond_0
    new-instance v0, Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;

    iget-object v2, p0, Lorg/kustom/api/preset/PresetInfoLoader;->mFile:Lorg/kustom/api/preset/PresetFile;

    invoke-direct {v0, p1, p2, v2}, Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;-><init>(Landroid/content/Context;Lorg/kustom/api/preset/PresetInfoLoader$Callback;Lorg/kustom/api/preset/PresetFile;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
