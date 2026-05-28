.class public Lorg/kustom/api/dashboard/ImagePreviewActivity;
.super Landroid/app/Activity;
.source "ImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;,
        Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;
    }
.end annotation


# static fields
.field public static final EXTRA_IMAGE_DATA:Ljava/lang/String; = "org.kustom.api.dashboard.EXTRA_IMAGE_DATA"

.field private static final PERMISSION_STORAGE_REQUEST_CODE:I = 0x7b

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mImageData:Lorg/kustom/api/dashboard/model/ImageData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/kustom/api/dashboard/ImagePreviewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/kustom/api/dashboard/ImagePreviewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 50
    iput-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity;->mImageData:Lorg/kustom/api/dashboard/model/ImageData;

    return-void
.end method

.method static synthetic access$002(Lorg/kustom/api/dashboard/ImagePreviewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/kustom/api/dashboard/ImagePreviewActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private downloadBitmap()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 146
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const/16 v1, 0x7b

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity;->mImageData:Lorg/kustom/api/dashboard/model/ImageData;

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;

    iget-object v1, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity;->mImageData:Lorg/kustom/api/dashboard/model/ImageData;

    invoke-virtual {v1}, Lorg/kustom/api/dashboard/model/ImageData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;-><init>(Lorg/kustom/api/dashboard/ImagePreviewActivity;Ljava/lang/String;)V

    new-array v1, v2, [Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity;->mBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method final synthetic lambda$setText$0$ImagePreviewActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 139
    sget v0, Lorg/kustom/api/dashboard/R$id;->text:I

    invoke-virtual {p0, v0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    sget v0, Lorg/kustom/api/dashboard/R$id;->progress:I

    invoke-virtual {p0, v0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    sget v0, Lorg/kustom/api/dashboard/R$id;->text:I

    invoke-virtual {p0, v0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 54
    sget-object v3, Lorg/kustom/api/dashboard/ImagePreviewActivity;->TAG:Ljava/lang/String;

    const-string v4, "Image preview starting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget v3, Lorg/kustom/api/dashboard/R$style;->KustomDashboardTheme_Translucent:I

    invoke-virtual {p0, v3}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->setTheme(I)V

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v3, Lorg/kustom/api/dashboard/R$layout;->kustom_image_preview_activity:I

    invoke-virtual {p0, v3}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->setContentView(I)V

    .line 60
    sget v3, Lorg/kustom/api/dashboard/R$id;->toolbar:I

    invoke-virtual {p0, v3}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    .line 61
    .local v2, "toolbar":Landroid/widget/Toolbar;
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0, v2}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 63
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "org.kustom.api.dashboard.EXTRA_IMAGE_DATA"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "org.kustom.api.dashboard.EXTRA_IMAGE_DATA"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "jsonData":Lorg/json/JSONObject;
    new-instance v3, Lorg/kustom/api/dashboard/model/ImageData;

    invoke-direct {v3, v1}, Lorg/kustom/api/dashboard/model/ImageData;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity;->mImageData:Lorg/kustom/api/dashboard/model/ImageData;

    .line 72
    sget v3, Lorg/kustom/api/dashboard/R$id;->title:I

    invoke-virtual {p0, v3}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity;->mImageData:Lorg/kustom/api/dashboard/model/ImageData;

    invoke-virtual {v4}, Lorg/kustom/api/dashboard/model/ImageData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget v3, Lorg/kustom/api/dashboard/R$id;->author:I

    invoke-virtual {p0, v3}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity;->mImageData:Lorg/kustom/api/dashboard/model/ImageData;

    invoke-virtual {v4}, Lorg/kustom/api/dashboard/model/ImageData;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity;->mImageData:Lorg/kustom/api/dashboard/model/ImageData;

    .line 76
    invoke-virtual {v4}, Lorg/kustom/api/dashboard/model/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    new-instance v5, Lorg/kustom/api/dashboard/ImagePreviewActivity$1;

    sget v3, Lorg/kustom/api/dashboard/R$id;->image:I

    .line 77
    invoke-virtual {p0, v3}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-direct {v5, p0, v3}, Lorg/kustom/api/dashboard/ImagePreviewActivity$1;-><init>(Lorg/kustom/api/dashboard/ImagePreviewActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "jsonData":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 88
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 94
    invoke-static {p0}, Lorg/kustom/api/dashboard/DashboardSettings;->get(Landroid/content/Context;)Lorg/kustom/api/dashboard/DashboardSettings;

    move-result-object v3

    .line 95
    .local v3, "settings":Lorg/kustom/api/dashboard/DashboardSettings;
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 96
    .local v2, "inflater":Landroid/view/MenuInflater;
    sget v4, Lorg/kustom/api/dashboard/R$menu;->image_preview:I

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 98
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 99
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 101
    const/4 v4, -0x1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v3}, Lorg/kustom/api/dashboard/DashboardSettings;->wallsDownloadEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 105
    sget v4, Lorg/kustom/api/dashboard/R$id;->menu_save:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    .line 106
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 112
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 113
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->finish()V

    .line 120
    :goto_0
    return v1

    .line 115
    :cond_0
    sget v2, Lorg/kustom/api/dashboard/R$id;->menu_apply:I

    if-ne v0, v2, :cond_2

    .line 116
    iget-object v2, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;-><init>(Lorg/kustom/api/dashboard/ImagePreviewActivity;Lorg/kustom/api/dashboard/ImagePreviewActivity$1;)V

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity;->mBitmap:Landroid/graphics/Bitmap;

    aput-object v4, v1, v3

    invoke-virtual {v2, v1}, Lorg/kustom/api/dashboard/ImagePreviewActivity$WallpaperApplyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 117
    :cond_2
    sget v1, Lorg/kustom/api/dashboard/R$id;->menu_save:I

    if-ne v0, v1, :cond_1

    .line 118
    invoke-direct {p0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->downloadBitmap()V

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "perm"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "result"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->downloadBitmap()V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
    .end packed-switch
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 138
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/kustom/api/dashboard/ImagePreviewActivity$$Lambda$0;

    invoke-direct {v1, p0, p1}, Lorg/kustom/api/dashboard/ImagePreviewActivity$$Lambda$0;-><init>(Lorg/kustom/api/dashboard/ImagePreviewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method
