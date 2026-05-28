.class public Lorg/kustom/api/preset/glide/PresetFileKey;
.super Ljava/lang/Object;
.source "PresetFileKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final mPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/kustom/api/preset/PresetFile;)V
    .locals 1
    .param p1, "file"    # Lorg/kustom/api/preset/PresetFile;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Lorg/kustom/api/preset/PresetFile;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/api/preset/glide/PresetFileKey;->mPath:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 25
    instance-of v0, p1, Lorg/kustom/api/preset/glide/PresetFileKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/kustom/api/preset/glide/PresetFileKey;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p1, Lorg/kustom/api/preset/glide/PresetFileKey;->mPath:Ljava/lang/String;

    iget-object v1, p0, Lorg/kustom/api/preset/glide/PresetFileKey;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/kustom/api/preset/glide/PresetFileKey;->mPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/kustom/api/preset/glide/PresetFileKey;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    iget-object v0, p0, Lorg/kustom/api/preset/glide/PresetFileKey;->mPath:Ljava/lang/String;

    sget-object v1, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 36
    return-void
.end method
