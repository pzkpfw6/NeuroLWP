.class Lorg/kustom/api/dashboard/views/DashboardPageImages$1;
.super Ljava/lang/Object;
.source "DashboardPageImages.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kustom/api/dashboard/views/DashboardPageImages;->setUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/kustom/api/dashboard/views/DashboardPageImages;


# direct methods
.method constructor <init>(Lorg/kustom/api/dashboard/views/DashboardPageImages;)V
    .locals 0
    .param p1, "this$0"    # Lorg/kustom/api/dashboard/views/DashboardPageImages;

    .prologue
    .line 37
    iput-object p1, p0, Lorg/kustom/api/dashboard/views/DashboardPageImages$1;->this$0:Lorg/kustom/api/dashboard/views/DashboardPageImages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 41
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    iget-object v0, p0, Lorg/kustom/api/dashboard/views/DashboardPageImages$1;->this$0:Lorg/kustom/api/dashboard/views/DashboardPageImages;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/views/DashboardPageImages;->setText(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/kustom/api/dashboard/model/DashboardImageItem;>;"
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .local v5, "responseBody":Lokhttp3/ResponseBody;
    const/4 v8, 0x0

    .line 49
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v7

    if-nez v7, :cond_1

    .line 50
    new-instance v7, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected code "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    :catch_0
    move-exception v7

    :try_start_2
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :catchall_0
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_0
    if-eqz v5, :cond_0

    if-eqz v8, :cond_7

    :try_start_3
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_1
    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v5    # "responseBody":Lokhttp3/ResponseBody;
    :catch_1
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 51
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "responseBody":Lokhttp3/ResponseBody;
    :cond_1
    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "body":Ljava/lang/String;
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 53
    new-instance v7, Ljava/io/IOException;

    const-string v9, "Empty data"

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 63
    .end local v0    # "body":Ljava/lang/String;
    :catchall_1
    move-exception v7

    goto :goto_0

    .line 51
    :cond_2
    const-string v0, ""
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 55
    .restart local v0    # "body":Ljava/lang/String;
    :cond_3
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "data":Lorg/json/JSONObject;
    const-string v7, "wallpapers"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 57
    .local v6, "walls":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 58
    new-instance v7, Lorg/kustom/api/dashboard/model/DashboardImageItem;

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    iget-object v10, p0, Lorg/kustom/api/dashboard/views/DashboardPageImages$1;->this$0:Lorg/kustom/api/dashboard/views/DashboardPageImages;

    invoke-virtual {v10}, Lorg/kustom/api/dashboard/views/DashboardPageImages;->getScreenRatio()F

    move-result v10

    invoke-direct {v7, v9, v10}, Lorg/kustom/api/dashboard/model/DashboardImageItem;-><init>(Lorg/json/JSONObject;F)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 60
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v6    # "walls":Lorg/json/JSONArray;
    :catch_2
    move-exception v2

    .line 61
    .local v2, "e":Lorg/json/JSONException;
    :try_start_7
    new-instance v7, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid JSON "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 63
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v3    # "i":I
    .restart local v6    # "walls":Lorg/json/JSONArray;
    :cond_4
    if-eqz v5, :cond_5

    if-eqz v8, :cond_6

    :try_start_8
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 66
    :cond_5
    :goto_4
    iget-object v7, p0, Lorg/kustom/api/dashboard/views/DashboardPageImages$1;->this$0:Lorg/kustom/api/dashboard/views/DashboardPageImages;

    invoke-virtual {v7, v4}, Lorg/kustom/api/dashboard/views/DashboardPageImages;->setEntries(Ljava/util/List;)V

    .line 67
    return-void

    .line 63
    :catch_3
    move-exception v7

    :try_start_9
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V

    goto :goto_4

    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v6    # "walls":Lorg/json/JSONArray;
    :catch_4
    move-exception v9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1
.end method
