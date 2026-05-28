.class final synthetic Lorg/kustom/api/dashboard/utils/Dialogs$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kustom/api/dashboard/utils/Dialogs$$Lambda$0;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lorg/kustom/api/dashboard/utils/Dialogs$$Lambda$0;->arg$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onButtonClick(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lorg/kustom/api/dashboard/utils/Dialogs$$Lambda$0;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lorg/kustom/api/dashboard/utils/Dialogs$$Lambda$0;->arg$2:Landroid/content/ComponentName;

    invoke-static {v0, v1, p1, p2}, Lorg/kustom/api/dashboard/utils/Dialogs;->lambda$showInfoDialog$0$Dialogs(Landroid/content/Context;Landroid/content/ComponentName;Landroid/view/View;I)V

    return-void
.end method
