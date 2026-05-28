.class public Lorg/kustom/api/preset/PresetInfo;
.super Ljava/lang/Object;
.source "PresetInfo.java"


# instance fields
.field private mArchive:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "archive"
    .end annotation
.end field

.field private mAuthor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author"
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private mEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field private mFeatures:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "features"
    .end annotation
.end field

.field private mFlags:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pflags"
    .end annotation
.end field

.field private mHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field private mLocked:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locked"
    .end annotation
.end field

.field private mRelease:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "release"
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private mVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field

.field private mXScreens:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "xscreens"
    .end annotation
.end field

.field private mYScreens:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "yscreens"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lorg/kustom/api/preset/PresetInfo;->mLocked:Z

    .line 33
    iput v0, p0, Lorg/kustom/api/preset/PresetInfo;->mFlags:I

    .line 37
    iput-object p1, p0, Lorg/kustom/api/preset/PresetInfo;->mTitle:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lorg/kustom/api/preset/PresetInfo;->mAuthor:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getArchive()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/kustom/api/preset/PresetInfo;->mArchive:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/kustom/api/preset/PresetInfo;->mAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/kustom/api/preset/PresetInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/kustom/api/preset/PresetInfo;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatures()Lorg/kustom/api/preset/PresetFeatures;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lorg/kustom/api/preset/PresetFeatures;

    iget-object v1, p0, Lorg/kustom/api/preset/PresetInfo;->mFeatures:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/kustom/api/preset/PresetFeatures;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lorg/kustom/api/preset/PresetInfo;->mFlags:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/kustom/api/preset/PresetInfo;->mHeight:I

    return v0
.end method

.method public getRelease()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/kustom/api/preset/PresetInfo;->mRelease:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/kustom/api/preset/PresetInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/kustom/api/preset/PresetInfo;->mVersion:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/kustom/api/preset/PresetInfo;->mWidth:I

    return v0
.end method

.method public getXScreens()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/kustom/api/preset/PresetInfo;->mXScreens:I

    return v0
.end method

.method public getYScreens()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/kustom/api/preset/PresetInfo;->mYScreens:I

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/kustom/api/preset/PresetInfo;->mLocked:Z

    return v0
.end method
