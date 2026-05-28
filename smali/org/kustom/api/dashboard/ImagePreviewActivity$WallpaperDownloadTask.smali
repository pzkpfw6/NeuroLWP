.class Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;
.super Landroid/os/AsyncTask;
.source "ImagePreviewActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kustom/api/dashboard/ImagePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field private mDownloadPath:Ljava/io/File;

.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lorg/kustom/api/dashboard/ImagePreviewActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 161
    iput-object p2, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;->mName:Ljava/lang/String;

    .line 162
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Exception;
    .locals 4
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v3, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;->mName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/kustom/api/dashboard/utils/WallpaperUtils;->downloadWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;->mDownloadPath:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;->doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v3, 0x1

    .line 182
    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    sget v1, Lorg/kustom/api/dashboard/R$id;->progress:I

    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    if-nez p1, :cond_0

    .line 184
    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper Saved to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;->mDownloadPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    :goto_0
    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    invoke-virtual {v0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->finish()V

    .line 192
    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 155
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 167
    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    sget v1, Lorg/kustom/api/dashboard/R$id;->progress:I

    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    return-void
.end method
