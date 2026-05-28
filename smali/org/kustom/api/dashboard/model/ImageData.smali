.class public Lorg/kustom/api/dashboard/model/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# instance fields
.field private final mAuthor:Ljava/lang/String;

.field private final mJsonData:Ljava/lang/String;

.field private final mThumbUrl:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "image"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kustom/api/dashboard/model/ImageData;->mJsonData:Ljava/lang/String;

    .line 19
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kustom/api/dashboard/model/ImageData;->mTitle:Ljava/lang/String;

    .line 20
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kustom/api/dashboard/model/ImageData;->mUrl:Ljava/lang/String;

    .line 21
    const-string v1, "author"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kustom/api/dashboard/model/ImageData;->mAuthor:Ljava/lang/String;

    .line 22
    const-string v1, "thumbnail"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "thumb":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/kustom/api/dashboard/model/ImageData;->mUrl:Ljava/lang/String;

    .end local v0    # "thumb":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lorg/kustom/api/dashboard/model/ImageData;->mThumbUrl:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/ImageData;->mAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/ImageData;->mJsonData:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/ImageData;->mThumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/ImageData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/ImageData;->mUrl:Ljava/lang/String;

    return-object v0
.end method
