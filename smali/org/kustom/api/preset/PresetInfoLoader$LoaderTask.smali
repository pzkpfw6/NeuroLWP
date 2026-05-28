.class Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;
.super Landroid/os/AsyncTask;
.source "PresetInfoLoader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kustom/api/preset/PresetInfoLoader;
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
        "Lorg/kustom/api/preset/PresetInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lorg/kustom/api/preset/PresetInfoLoader$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mFile:Lorg/kustom/api/preset/PresetFile;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/kustom/api/preset/PresetInfoLoader$Callback;Lorg/kustom/api/preset/PresetFile;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lorg/kustom/api/preset/PresetInfoLoader$Callback;
    .param p3, "file"    # Lorg/kustom/api/preset/PresetFile;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;->mCallback:Lorg/kustom/api/preset/PresetInfoLoader$Callback;

    .line 53
    iput-object p3, p0, Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;->mFile:Lorg/kustom/api/preset/PresetFile;

    .line 54
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
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "info":Lorg/kustom/api/preset/PresetInfo;
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v1, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 90
    .local v1, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v3, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 91
    .local v3, "reader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 92
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "name":Ljava/lang/String;
    const-string v4, "preset_info"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lorg/kustom/api/preset/PresetInfo;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Lorg/kustom/api/preset/PresetInfo;
    check-cast v0, Lorg/kustom/api/preset/PresetInfo;

    .line 95
    .restart local v0    # "info":Lorg/kustom/api/preset/PresetInfo;
    :cond_0
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->close()V

    .line 96
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;->doInBackground([Ljava/lang/Void;)Lorg/kustom/api/preset/PresetInfo;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/kustom/api/preset/PresetInfo;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 58
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipInputStream;

    iget-object v4, p0, Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;->mFile:Lorg/kustom/api/preset/PresetFile;

    iget-object v6, p0, Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lorg/kustom/api/preset/PresetFile;->getStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v3, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v6, 0x0

    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "found":Z
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    .local v2, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "preset.json"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    const/4 v1, 0x1

    .line 70
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    invoke-direct {p0, v3}, Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;->buildFromStream(Ljava/io/InputStream;)Lorg/kustom/api/preset/PresetInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 72
    if-eqz v3, :cond_2

    if-eqz v5, :cond_4

    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    .end local v1    # "found":Z
    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    .end local v3    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_2
    :goto_1
    return-object v4

    .line 65
    .restart local v1    # "found":Z
    .restart local v2    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v3    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "komponent_thumb.jpg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 67
    goto :goto_0

    .line 72
    :catch_0
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .end local v1    # "found":Z
    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    .end local v3    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .line 74
    goto :goto_1

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "found":Z
    .restart local v2    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v3    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_4
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 71
    :cond_5
    :try_start_6
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Preset info not found"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 58
    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v4

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 72
    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v4

    move-object v4, v8

    :goto_2
    if-eqz v3, :cond_6

    if-eqz v6, :cond_7

    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_6
    :goto_3
    :try_start_9
    throw v4

    :catch_3
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v4

    move-object v6, v5

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lorg/kustom/api/preset/PresetInfo;

    invoke-virtual {p0, p1}, Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;->onPostExecute(Lorg/kustom/api/preset/PresetInfo;)V

    return-void
.end method

.method protected onPostExecute(Lorg/kustom/api/preset/PresetInfo;)V
    .locals 3
    .param p1, "result"    # Lorg/kustom/api/preset/PresetInfo;

    .prologue
    .line 80
    if-nez p1, :cond_0

    new-instance p1, Lorg/kustom/api/preset/PresetInfo;

    .end local p1    # "result":Lorg/kustom/api/preset/PresetInfo;
    iget-object v0, p0, Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;->mFile:Lorg/kustom/api/preset/PresetFile;

    invoke-virtual {v0}, Lorg/kustom/api/preset/PresetFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/kustom/api/preset/PresetInfo;-><init>(Ljava/lang/String;)V

    .line 81
    .restart local p1    # "result":Lorg/kustom/api/preset/PresetInfo;
    :cond_0
    invoke-static {}, Lorg/kustom/api/preset/PresetInfoLoader;->access$000()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 82
    :try_start_0
    invoke-static {}, Lorg/kustom/api/preset/PresetInfoLoader;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;->mFile:Lorg/kustom/api/preset/PresetFile;

    invoke-virtual {v2}, Lorg/kustom/api/preset/PresetFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lorg/kustom/api/preset/PresetInfoLoader$LoaderTask;->mCallback:Lorg/kustom/api/preset/PresetInfoLoader$Callback;

    invoke-interface {v0, p1}, Lorg/kustom/api/preset/PresetInfoLoader$Callback;->onInfoLoaded(Lorg/kustom/api/preset/PresetInfo;)V

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
