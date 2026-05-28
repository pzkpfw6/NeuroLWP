.class public Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;
.super Ljava/lang/Object;
.source "WallpaperBitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$LoaderTask;,
        Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$Callback;
    }
.end annotation


# static fields
.field private static mBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;->mLock:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;->mBitmap:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 24
    sput-object p0, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;->mBitmap:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static create()Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;

    invoke-direct {v0}, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;-><init>()V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/content/Context;Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    sget-object v1, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;->mBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;->mBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;->mBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {p2, v0}, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$Callback;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 40
    :goto_0
    monitor-exit v1

    .line 41
    return-void

    .line 39
    :cond_0
    new-instance v0, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$LoaderTask;

    invoke-direct {v0, p1, p2}, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$LoaderTask;-><init>(Landroid/content/Context;Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$Callback;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$LoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
