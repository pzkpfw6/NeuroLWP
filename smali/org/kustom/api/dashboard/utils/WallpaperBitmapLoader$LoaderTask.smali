.class Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$LoaderTask;
.super Landroid/os/AsyncTask;
.source "WallpaperBitmapLoader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$Callback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$Callback;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$LoaderTask;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$LoaderTask;->mCallback:Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$Callback;

    .line 55
    return-void
.end method

.method private buildFromStream(Ljava/io/InputStream;)Lorg/kustom/api/preset/PresetInfo;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "info":Lorg/kustom/api/preset/PresetInfo;
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v1, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 84
    .local v1, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v3, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 85
    .local v3, "reader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 86
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "name":Ljava/lang/String;
    const-string v4, "preset_info"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lorg/kustom/api/preset/PresetInfo;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Lorg/kustom/api/preset/PresetInfo;
    check-cast v0, Lorg/kustom/api/preset/PresetInfo;

    .line 89
    .restart local v0    # "info":Lorg/kustom/api/preset/PresetInfo;
    :cond_0
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->close()V

    .line 90
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 60
    :try_start_0
    iget-object v4, p0, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 61
    .local v2, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 62
    .local v1, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 63
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 68
    .end local v2    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_0
    :goto_0
    return-object v3

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$LoaderTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-static {}, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 75
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;->access$102(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 76
    iget-object v0, p0, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$LoaderTask;->mCallback:Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$Callback;

    invoke-interface {v0, p1}, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$Callback;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 77
    monitor-exit v1

    .line 79
    :cond_0
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$LoaderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
