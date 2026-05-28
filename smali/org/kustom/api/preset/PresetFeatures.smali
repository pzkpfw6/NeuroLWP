.class public Lorg/kustom/api/preset/PresetFeatures;
.super Ljava/lang/Object;
.source "PresetFeatures.java"


# static fields
.field public static final FEATURE_ANALOG_CLOCK:I = 0x40

.field public static final FEATURE_CALENDAR:I = 0x80

.field public static final FEATURE_CALL:I = 0x10000

.field public static final FEATURE_DOWNLOAD:I = 0x800

.field public static final FEATURE_FITNESS:I = 0x200

.field public static final FEATURE_FORECAST:I = 0x10

.field public static final FEATURE_GYRO:I = 0x20

.field public static final FEATURE_LOCATION:I = 0x4

.field public static final FEATURE_MUSIC:I = 0x100

.field public static final FEATURE_NOTIFICATIONS:I = 0x2000

.field public static final FEATURE_SHELL:I = 0x4000

.field public static final FEATURE_SIGNAL:I = 0x1000

.field public static final FEATURE_TRAFFIC:I = 0x400

.field public static final FEATURE_UNREAD:I = 0x8000

.field public static final FEATURE_WEATHER:I = 0x8

.field public static final FLAG_FEATURE_NONE:Lorg/kustom/api/preset/PresetFeatures;


# instance fields
.field private mFlags:I

.field private final mIsMutable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lorg/kustom/api/preset/PresetFeatures;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/kustom/api/preset/PresetFeatures;-><init>(Z)V

    sput-object v0, Lorg/kustom/api/preset/PresetFeatures;->FLAG_FEATURE_NONE:Lorg/kustom/api/preset/PresetFeatures;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/kustom/api/preset/PresetFeatures;-><init>(Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .param p1, "flags"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, v4}, Lorg/kustom/api/preset/PresetFeatures;-><init>(Z)V

    .line 59
    invoke-direct {p0, p1}, Lorg/kustom/api/preset/PresetFeatures;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 60
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "flagArray":[Ljava/lang/String;
    array-length v8, v1

    move v7, v3

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v0, v1, v7

    .line 62
    .local v0, "flag":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 61
    :goto_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_0

    .line 62
    :sswitch_0
    const-string v9, "LOCATION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v2, v3

    goto :goto_1

    :sswitch_1
    const-string v9, "WEATHER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v2, v4

    goto :goto_1

    :sswitch_2
    const-string v9, "FORECAST"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v9, "GYRO"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v9, "ANALOG_CLOCK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v2, v5

    goto :goto_1

    :sswitch_5
    const-string v9, "CALENDAR"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v9, "MUSIC"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v9, "FITNESS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string v9, "TRAFFIC"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v2, v6

    goto :goto_1

    :sswitch_9
    const-string v9, "DOWNLOAD"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_a
    const-string v9, "SIGNAL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_b
    const-string v9, "NOTIFICATIONS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v9, "SHELL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v9, "UNREAD"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v9, "CALL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_1

    .line 64
    :pswitch_0
    invoke-virtual {p0, v5}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 67
    :pswitch_1
    invoke-virtual {p0, v6}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 70
    :pswitch_2
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 73
    :pswitch_3
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 76
    :pswitch_4
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 79
    :pswitch_5
    const/16 v2, 0x80

    invoke-virtual {p0, v2}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 82
    :pswitch_6
    const/16 v2, 0x100

    invoke-virtual {p0, v2}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 85
    :pswitch_7
    const/16 v2, 0x200

    invoke-virtual {p0, v2}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 88
    :pswitch_8
    const/16 v2, 0x400

    invoke-virtual {p0, v2}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 91
    :pswitch_9
    const/16 v2, 0x800

    invoke-virtual {p0, v2}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 94
    :pswitch_a
    const/16 v2, 0x1000

    invoke-virtual {p0, v2}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 97
    :pswitch_b
    const/16 v2, 0x2000

    invoke-virtual {p0, v2}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 100
    :pswitch_c
    const/16 v2, 0x4000

    invoke-virtual {p0, v2}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 103
    :pswitch_d
    const v2, 0x8000

    invoke-virtual {p0, v2}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 106
    :pswitch_e
    const/high16 v2, 0x10000

    invoke-virtual {p0, v2}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    goto/16 :goto_2

    .line 110
    .end local v0    # "flag":Ljava/lang/String;
    :cond_1
    return-void

    .line 62
    :sswitch_data_0
    .sparse-switch
        -0x7c3f4778 -> :sswitch_9
        -0x6e379d58 -> :sswitch_a
        -0x6a829851 -> :sswitch_d
        -0x600a704b -> :sswitch_0
        -0x42f85021 -> :sswitch_4
        -0x14d25223 -> :sswitch_8
        -0x7b5ce38 -> :sswitch_7
        0x1f725e -> :sswitch_e
        0x219eaf -> :sswitch_3
        0x464f605 -> :sswitch_6
        0x4b36610 -> :sswitch_c
        0x594acc8 -> :sswitch_b
        0x2404eb3e -> :sswitch_5
        0x4a77b9fb -> :sswitch_2
        0x73b7c3d4 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "isMutable"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lorg/kustom/api/preset/PresetFeatures;->mFlags:I

    .line 49
    iput-boolean p1, p0, Lorg/kustom/api/preset/PresetFeatures;->mIsMutable:Z

    .line 50
    return-void
.end method

.method private toASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    .end local p1    # "source":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 199
    .restart local p1    # "source":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 201
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 202
    .local v0, "c":I
    const/16 v3, 0x20

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    .end local v0    # "c":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public add(I)Lorg/kustom/api/preset/PresetFeatures;
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/kustom/api/preset/PresetFeatures;->mIsMutable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/kustom/api/preset/PresetFeatures;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/kustom/api/preset/PresetFeatures;->mFlags:I

    .line 132
    return-object p0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add flags to an immutable instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Lorg/kustom/api/preset/PresetFeatures;)V
    .locals 1
    .param p1, "flags"    # Lorg/kustom/api/preset/PresetFeatures;

    .prologue
    .line 151
    invoke-virtual {p1}, Lorg/kustom/api/preset/PresetFeatures;->getFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/kustom/api/preset/PresetFeatures;->add(I)Lorg/kustom/api/preset/PresetFeatures;

    .line 152
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lorg/kustom/api/preset/PresetFeatures;->mIsMutable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/kustom/api/preset/PresetFeatures;->mFlags:I

    .line 160
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot clear flags of an immutable instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 120
    iget v0, p0, Lorg/kustom/api/preset/PresetFeatures;->mFlags:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/kustom/api/preset/PresetFeatures;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 172
    instance-of v0, p1, Lorg/kustom/api/preset/PresetFeatures;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/kustom/api/preset/PresetFeatures;->mFlags:I

    check-cast p1, Lorg/kustom/api/preset/PresetFeatures;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p1, Lorg/kustom/api/preset/PresetFeatures;->mFlags:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lorg/kustom/api/preset/PresetFeatures;->mFlags:I

    return v0
.end method

.method public remove(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/kustom/api/preset/PresetFeatures;->mIsMutable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/kustom/api/preset/PresetFeatures;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/kustom/api/preset/PresetFeatures;->mFlags:I

    .line 143
    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add flags to an immutable instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/kustom/api/preset/PresetFeatures;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    iget v1, p0, Lorg/kustom/api/preset/PresetFeatures;->mFlags:I

    if-nez v1, :cond_0

    const-string v1, ""

    .line 194
    :goto_0
    return-object v1

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "LOCATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WEATHER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_2
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "FORECAST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_3
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "GYRO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_4
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ANALOG_CLOCK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_5
    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "CALENDAR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_6
    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "MUSIC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_7
    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "FITNESS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_8
    const/16 v1, 0x400

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "TRAFFIC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_9
    const/16 v1, 0x800

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "DOWNLOAD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_a
    const/16 v1, 0x1000

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "SIGNAL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_b
    const/16 v1, 0x2000

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "NOTIFICATIONS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_c
    const/16 v1, 0x4000

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "SHELL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_d
    const v1, 0x8000

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "UNREAD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_e
    const/high16 v1, 0x10000

    invoke-virtual {p0, v1}, Lorg/kustom/api/preset/PresetFeatures;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "CALL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method
