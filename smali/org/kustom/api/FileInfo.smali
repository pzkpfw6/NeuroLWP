.class public Lorg/kustom/api/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# static fields
.field private static final COL_MODIFIED:Ljava/lang/String; = "modified"

.field private static final COL_SIZE:Ljava/lang/String; = "size"

.field private static final COL_VALID:Ljava/lang/String; = "valid"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsValid:Z

.field private mModified:J

.field private mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/kustom/api/FileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/kustom/api/FileInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/kustom/api/FileInfo;->mIsValid:Z

    .line 19
    iput-wide v2, p0, Lorg/kustom/api/FileInfo;->mSize:J

    .line 20
    iput-wide v2, p0, Lorg/kustom/api/FileInfo;->mModified:J

    .line 23
    if-eqz p1, :cond_0

    .line 24
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 25
    const-string v1, "valid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/kustom/api/FileInfo;->mIsValid:Z

    .line 26
    const-string v1, "size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/kustom/api/FileInfo;->mSize:J

    .line 27
    const-string v1, "modified"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/kustom/api/FileInfo;->mModified:J

    .line 28
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Landroid/database/CursorIndexOutOfBoundsException;
    sget-object v1, Lorg/kustom/api/FileInfo;->TAG:Ljava/lang/String;

    const-string v2, "Cursor is empty, file not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 31
    .end local v0    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/kustom/api/FileInfo;->TAG:Ljava/lang/String;

    const-string v2, "Invalid cursor data for File Info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static buildCursor(ZLjava/io/File;)Landroid/database/Cursor;
    .locals 7
    .param p0, "isValid"    # Z
    .param p1, "sourceFile"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "valid"

    aput-object v2, v1, v3

    const-string v2, "size"

    aput-object v2, v1, v4

    const-string v2, "modified"

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 42
    .local v0, "cursor":Landroid/database/MatrixCursor;
    new-array v1, v6, [Ljava/lang/String;

    .line 43
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 42
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 48
    return-object v0
.end method


# virtual methods
.method public getModified()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/kustom/api/FileInfo;->mModified:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/kustom/api/FileInfo;->mSize:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/kustom/api/FileInfo;->mIsValid:Z

    return v0
.end method
