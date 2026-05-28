.class Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;
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
    name = "WallpaperApplyTask"
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
.field final synthetic this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;


# direct methods
.method private constructor <init>(Lorg/kustom/api/dashboard/ImagePreviewActivity;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/kustom/api/dashboard/ImagePreviewActivity;Lorg/kustom/api/dashboard/ImagePreviewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/kustom/api/dashboard/ImagePreviewActivity;
    .param p2, "x1"    # Lorg/kustom/api/dashboard/ImagePreviewActivity$1;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;-><init>(Lorg/kustom/api/dashboard/ImagePreviewActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Exception;
    .locals 3
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lorg/kustom/api/dashboard/utils/WallpaperUtils;->setWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;->doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x1

    .line 216
    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    sget v1, Lorg/kustom/api/dashboard/R$id;->progress:I

    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    if-nez p1, :cond_0

    .line 218
    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    const-string v1, "Wallpaper Set"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    :goto_0
    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    invoke-virtual {v0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->finish()V

    .line 226
    return-void

    .line 221
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    .line 223
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 201
    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    sget v1, Lorg/kustom/api/dashboard/R$id;->progress:I

    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    return-void
.end method
