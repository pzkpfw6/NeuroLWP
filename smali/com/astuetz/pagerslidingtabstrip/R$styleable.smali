.class public final Lcom/astuetz/pagerslidingtabstrip/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/astuetz/pagerslidingtabstrip/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final PagerSlidingTabStrip:[I

.field public static final PagerSlidingTabStrip_pstsDividerColor:I = 0x0

.field public static final PagerSlidingTabStrip_pstsDividerPadding:I = 0x1

.field public static final PagerSlidingTabStrip_pstsDividerWidth:I = 0x2

.field public static final PagerSlidingTabStrip_pstsIndicatorColor:I = 0x3

.field public static final PagerSlidingTabStrip_pstsIndicatorHeight:I = 0x4

.field public static final PagerSlidingTabStrip_pstsPaddingMiddle:I = 0x5

.field public static final PagerSlidingTabStrip_pstsScrollOffset:I = 0x6

.field public static final PagerSlidingTabStrip_pstsShouldExpand:I = 0x7

.field public static final PagerSlidingTabStrip_pstsTabBackground:I = 0x8

.field public static final PagerSlidingTabStrip_pstsTabPaddingLeftRight:I = 0x9

.field public static final PagerSlidingTabStrip_pstsTabTextAllCaps:I = 0xa

.field public static final PagerSlidingTabStrip_pstsTabTextAlpha:I = 0xb

.field public static final PagerSlidingTabStrip_pstsTabTextColor:I = 0xc

.field public static final PagerSlidingTabStrip_pstsTabTextFontFamily:I = 0xd

.field public static final PagerSlidingTabStrip_pstsTabTextSize:I = 0xe

.field public static final PagerSlidingTabStrip_pstsTabTextStyle:I = 0xf

.field public static final PagerSlidingTabStrip_pstsUnderlineColor:I = 0x10

.field public static final PagerSlidingTabStrip_pstsUnderlineHeight:I = 0x11


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip:[I

    return-void

    :array_0
    .array-data 4
        0x7f01001d
        0x7f01001e
        0x7f01001f
        0x7f010020
        0x7f010021
        0x7f010022
        0x7f010023
        0x7f010024
        0x7f010025
        0x7f010026
        0x7f010027
        0x7f010028
        0x7f010029
        0x7f01002a
        0x7f01002b
        0x7f01002c
        0x7f01002d
        0x7f01002e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
