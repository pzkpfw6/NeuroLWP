.class public Lorg/kustom/api/dashboard/utils/OkHttpUtils;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"


# static fields
.field private static sCache:Lokhttp3/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lorg/kustom/api/dashboard/utils/OkHttpUtils;->sCache:Lokhttp3/Cache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static declared-synchronized getCacheDirectory(Landroid/content/Context;)Lokhttp3/Cache;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const-class v3, Lorg/kustom/api/dashboard/utils/OkHttpUtils;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lorg/kustom/api/dashboard/utils/OkHttpUtils;->sCache:Lokhttp3/Cache;

    if-nez v2, :cond_0

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "http"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .local v0, "cacheDirectory":Ljava/io/File;
    const/high16 v1, 0xa00000

    .line 19
    .local v1, "cacheSize":I
    new-instance v2, Lokhttp3/Cache;

    int-to-long v4, v1

    invoke-direct {v2, v0, v4, v5}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    sput-object v2, Lorg/kustom/api/dashboard/utils/OkHttpUtils;->sCache:Lokhttp3/Cache;

    .line 21
    .end local v0    # "cacheDirectory":Ljava/io/File;
    .end local v1    # "cacheSize":I
    :cond_0
    sget-object v2, Lorg/kustom/api/dashboard/utils/OkHttpUtils;->sCache:Lokhttp3/Cache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 16
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
