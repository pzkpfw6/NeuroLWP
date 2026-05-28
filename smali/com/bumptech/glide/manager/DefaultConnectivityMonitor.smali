.class final Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
.super Ljava/lang/Object;
.source "DefaultConnectivityMonitor.java"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitor;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectivityMonitor"


# instance fields
.field private final connectivityReceiver:Landroid/content/BroadcastReceiver;

.field private final context:Landroid/content/Context;

.field isConnected:Z

.field private isRegistered:Z

.field final listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;-><init>(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    .line 43
    return-void
.end method

.method private register()V
    .locals 5

    .prologue
    .line 46
    iget-boolean v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isRegistered:Z

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isRegistered:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "ConnectivityMonitor"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "ConnectivityMonitor"

    const-string v2, "Failed to register"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isRegistered:Z

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isRegistered:Z

    goto :goto_0
.end method


# virtual methods
.method isConnected(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 79
    const-string v3, "connectivity"

    .line 81
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 80
    invoke-static {v3}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 84
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 95
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 85
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "ConnectivityMonitor"

    const/4 v5, 0x5

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const-string v3, "ConnectivityMonitor"

    const-string v5, "Failed to determine connectivity status when connectivity changed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v3, v4

    .line 93
    goto :goto_0

    .line 95
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->register()V

    .line 101
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->unregister()V

    .line 106
    return-void
.end method
