.class public Lcom/astuetz/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;,
        Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;,
        Lcom/astuetz/PagerSlidingTabStrip$SavedState;,
        Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;,
        Lcom/astuetz/PagerSlidingTabStrip$PageListener;
    }
.end annotation


# static fields
.field private static final ANDROID_ATTRS:[I

.field public static final DEF_VALUE_TAB_TEXT_ALPHA:I = 0x96

.field private static final PADDING_INDEX:I = 0x1

.field private static final PADDING_LEFT_INDEX:I = 0x2

.field private static final PADDING_RIGHT_INDEX:I = 0x3

.field private static final TEXT_COLOR_PRIMARY:I


# instance fields
.field private isCustomTabs:Z

.field private isExpandTabs:Z

.field private isPaddingMiddle:Z

.field private isTabTextAllCaps:Z

.field private final mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

.field private mCurrentPosition:I

.field private mCurrentPositionOffset:F

.field public mDelegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mDividerColor:I

.field private mDividerPadding:I

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field private mIndicatorColor:I

.field private mIndicatorHeight:I

.field private mLastScrollX:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private final mPageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mScrollOffset:I

.field private mTabBackgroundResId:I

.field private mTabCount:I

.field private mTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mTabPadding:I

.field private mTabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

.field private mTabTextColor:Landroid/content/res/ColorStateList;

.field private mTabTextSize:I

.field private mTabTextTypeface:Landroid/graphics/Typeface;

.field private mTabTextTypefaceStyle:I

.field private mTabsContainer:Landroid/widget/LinearLayout;

.field private mUnderlineColor:I

.field private mUnderlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/astuetz/PagerSlidingTabStrip;->ANDROID_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010036
        0x10100d5
        0x10100d6
        0x10100d8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/astuetz/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/astuetz/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v7, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;-><init>(Lcom/astuetz/PagerSlidingTabStrip;Lcom/astuetz/PagerSlidingTabStrip$1;)V

    iput-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    .line 67
    new-instance v7, Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/astuetz/PagerSlidingTabStrip$PageListener;-><init>(Lcom/astuetz/PagerSlidingTabStrip;Lcom/astuetz/PagerSlidingTabStrip$1;)V

    iput-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    .line 68
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    .line 74
    const/4 v7, 0x0

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    .line 75
    const/4 v7, 0x0

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    .line 81
    const/4 v7, 0x2

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    .line 83
    const/4 v7, 0x0

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    .line 86
    const/4 v7, 0x0

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    .line 87
    const/4 v7, 0x0

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    .line 90
    const/16 v7, 0xc

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    .line 91
    const/16 v7, 0xe

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    .line 92
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 94
    const/4 v7, 0x0

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    .line 95
    const/4 v7, 0x0

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingRight:I

    .line 97
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->isExpandTabs:Z

    .line 99
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    .line 100
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->isTabTextAllCaps:Z

    .line 102
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypeface:Landroid/graphics/Typeface;

    .line 103
    const/4 v7, 0x1

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypefaceStyle:I

    .line 106
    const/4 v7, 0x0

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mLastScrollX:I

    .line 108
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$drawable;->psts_background_tab:I

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabBackgroundResId:I

    .line 120
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/astuetz/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 121
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/astuetz/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 122
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 123
    iget-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    iget-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7}, Lcom/astuetz/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 126
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mRectPaint:Landroid/graphics/Paint;

    .line 127
    iget-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mRectPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mRectPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 131
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const/4 v7, 0x1

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    int-to-float v8, v8

    invoke-static {v7, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    .line 132
    const/4 v7, 0x1

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    int-to-float v8, v8

    invoke-static {v7, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    .line 133
    const/4 v7, 0x1

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    int-to-float v8, v8

    invoke-static {v7, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    .line 134
    const/4 v7, 0x1

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    int-to-float v8, v8

    invoke-static {v7, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    .line 135
    const/4 v7, 0x1

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    int-to-float v8, v8

    invoke-static {v7, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    .line 136
    const/4 v7, 0x1

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    int-to-float v8, v8

    invoke-static {v7, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    .line 137
    const/4 v7, 0x2

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    int-to-float v8, v8

    invoke-static {v7, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    .line 139
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    .line 140
    iget-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    sget-object v7, Lcom/astuetz/PagerSlidingTabStrip;->ANDROID_ATTRS:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const v8, 0x106000c

    invoke-static {p1, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 146
    .local v6, "textPrimaryColor":I
    iput v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineColor:I

    .line 147
    iput v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerColor:I

    .line 148
    iput v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorColor:I

    .line 149
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 150
    .local v3, "padding":I
    if-lez v3, :cond_3

    move v7, v3

    :goto_0
    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    .line 151
    if-lez v3, :cond_4

    .end local v3    # "padding":I
    :goto_1
    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingRight:I

    .line 152
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    const-string v5, "sans-serif"

    .line 156
    .local v5, "tabTextTypefaceName":Ljava/lang/String;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_0

    .line 157
    const-string v5, "sans-serif-medium"

    .line 158
    const/4 v7, 0x0

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypefaceStyle:I

    .line 162
    :cond_0
    sget-object v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 163
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsIndicatorColor:I

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorColor:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorColor:I

    .line 164
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsIndicatorHeight:I

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    .line 165
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsUnderlineColor:I

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineColor:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineColor:I

    .line 166
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsUnderlineHeight:I

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    .line 167
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsDividerColor:I

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerColor:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerColor:I

    .line 168
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsDividerWidth:I

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    .line 169
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsDividerPadding:I

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    .line 170
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsShouldExpand:I

    iget-boolean v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->isExpandTabs:Z

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->isExpandTabs:Z

    .line 171
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsScrollOffset:I

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    .line 172
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsPaddingMiddle:I

    iget-boolean v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    .line 173
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabPaddingLeftRight:I

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    .line 174
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabBackground:I

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabBackgroundResId:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabBackgroundResId:I

    .line 175
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabTextSize:I

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    .line 176
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabTextColor:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_5

    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabTextColor:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    :goto_2
    iput-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 177
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabTextStyle:I

    iget v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypefaceStyle:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypefaceStyle:I

    .line 178
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabTextAllCaps:I

    iget-boolean v8, p0, Lcom/astuetz/PagerSlidingTabStrip;->isTabTextAllCaps:Z

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->isTabTextAllCaps:Z

    .line 179
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabTextAlpha:I

    const/16 v8, 0x96

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 180
    .local v4, "tabTextAlpha":I
    sget v7, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabTextFontFamily:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "fontFamily":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    iget-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextColor:Landroid/content/res/ColorStateList;

    if-nez v7, :cond_1

    .line 189
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 190
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 191
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 188
    invoke-static {v4, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 185
    invoke-direct {p0, v6, v6, v7}, Lcom/astuetz/PagerSlidingTabStrip;->createColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 195
    :cond_1
    if-eqz v2, :cond_2

    .line 196
    move-object v5, v2

    .line 198
    :cond_2
    iget v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypefaceStyle:I

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypeface:Landroid/graphics/Typeface;

    .line 201
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->setTabsContainerParentViewPaddings()V

    .line 204
    iget-boolean v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->isExpandTabs:Z

    if-eqz v7, :cond_6

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_3
    iput-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 207
    return-void

    .line 150
    .end local v2    # "fontFamily":Ljava/lang/String;
    .end local v4    # "tabTextAlpha":I
    .end local v5    # "tabTextTypefaceName":Ljava/lang/String;
    .restart local v3    # "padding":I
    :cond_3
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    goto/16 :goto_0

    .line 151
    :cond_4
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto/16 :goto_1

    .line 176
    .end local v3    # "padding":I
    .restart local v5    # "tabTextTypefaceName":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 204
    .restart local v2    # "fontFamily":Ljava/lang/String;
    .restart local v4    # "tabTextAlpha":I
    :cond_6
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_3
.end method

.method static synthetic access$1000(Lcom/astuetz/PagerSlidingTabStrip;I)V
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->updateSelection(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->select(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->unSelect(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/astuetz/PagerSlidingTabStrip;)Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$702(Lcom/astuetz/PagerSlidingTabStrip;F)F
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    return p1
.end method

.method static synthetic access$800(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;

    .prologue
    .line 47
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/astuetz/PagerSlidingTabStrip;II)V
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/astuetz/PagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method private addTab(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "tabView"    # Landroid/view/View;

    .prologue
    .line 246
    sget v1, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 248
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 252
    new-instance v1, Lcom/astuetz/PagerSlidingTabStrip$1;

    invoke-direct {v1, p0, p1}, Lcom/astuetz/PagerSlidingTabStrip$1;-><init>(Lcom/astuetz/PagerSlidingTabStrip;I)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, p3, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 266
    return-void
.end method

.method private createColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "color_state_default"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 741
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v4, [[I

    new-array v2, v3, [I

    aput-object v2, v1, v3

    new-array v2, v4, [I

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private createColorStateList(III)Landroid/content/res/ColorStateList;
    .locals 8
    .param p1, "color_state_pressed"    # I
    .param p2, "color_state_selected"    # I
    .param p3, "color_state_default"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 752
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v7, [[I

    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v5

    new-array v2, v4, [I

    aput-object v2, v1, v6

    new-array v2, v7, [I

    aput p1, v2, v4

    aput p2, v2, v5

    aput p3, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private scrollToChild(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 292
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    if-nez v2, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int v1, v2, p2

    .line 297
    .local v1, "newScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 302
    :cond_2
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    sub-int/2addr v1, v2

    .line 303
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getIndicatorCoordinates()Landroid/support/v4/util/Pair;

    move-result-object v0

    .line 304
    .local v0, "lines":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    int-to-float v3, v1

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v2, v4, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 307
    .end local v0    # "lines":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_3
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mLastScrollX:I

    if-eq v1, v2, :cond_0

    .line 308
    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mLastScrollX:I

    .line 309
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/astuetz/PagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0
.end method

.method private select(Landroid/view/View;)V
    .locals 2
    .param p1, "tab"    # Landroid/view/View;

    .prologue
    .line 480
    if-eqz p1, :cond_1

    .line 481
    sget v1, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 482
    .local v0, "tab_title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 483
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 485
    :cond_0
    iget-boolean v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->isCustomTabs:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;

    invoke-interface {v1, p1}, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;->tabSelected(Landroid/view/View;)V

    .line 487
    .end local v0    # "tab_title":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private setTabsContainerParentViewPaddings()V
    .locals 4

    .prologue
    .line 210
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    if-lt v1, v2, :cond_0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    .line 211
    .local v0, "bottomMargin":I
    :goto_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/astuetz/PagerSlidingTabStrip;->setPadding(IIII)V

    .line 212
    return-void

    .line 210
    .end local v0    # "bottomMargin":I
    :cond_0
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    goto :goto_0
.end method

.method private unSelect(Landroid/view/View;)V
    .locals 2
    .param p1, "tab"    # Landroid/view/View;

    .prologue
    .line 470
    if-eqz p1, :cond_1

    .line 471
    sget v1, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 472
    .local v0, "tab_title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 473
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 475
    :cond_0
    iget-boolean v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->isCustomTabs:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;

    invoke-interface {v1, p1}, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;->tabUnselected(Landroid/view/View;)V

    .line 477
    .end local v0    # "tab_title":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private updateSelection(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 458
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    if-ge v0, v3, :cond_2

    .line 459
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 460
    .local v2, "tv":Landroid/view/View;
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    .line 461
    .local v1, "selected":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 462
    invoke-direct {p0, v2}, Lcom/astuetz/PagerSlidingTabStrip;->select(Landroid/view/View;)V

    .line 458
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    .end local v1    # "selected":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 464
    .restart local v1    # "selected":Z
    :cond_1
    invoke-direct {p0, v2}, Lcom/astuetz/PagerSlidingTabStrip;->unSelect(Landroid/view/View;)V

    goto :goto_2

    .line 467
    .end local v1    # "selected":Z
    .end local v2    # "tv":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private updateTabStyles()V
    .locals 7

    .prologue
    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    if-ge v0, v3, :cond_2

    .line 270
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 271
    .local v2, "v":Landroid/view/View;
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 272
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 273
    sget v3, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 274
    .local v1, "tab_title":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 275
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 276
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypeface:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypefaceStyle:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 277
    const/4 v3, 0x0

    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 280
    iget-boolean v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->isTabTextAllCaps:Z

    if-eqz v3, :cond_0

    .line 281
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 282
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 269
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 289
    .end local v1    # "tab_title":Landroid/widget/TextView;
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    return v0
.end method

.method public getCurrentPositionOffset()F
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorColor:I

    return v0
.end method

.method public getIndicatorCoordinates()Landroid/support/v4/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 315
    iget-object v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, "currentTab":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v1, v6

    .line 317
    .local v1, "lineLeft":F
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v2, v6

    .line 319
    .local v2, "lineRight":F
    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    iget v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_0

    .line 320
    iget-object v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 321
    .local v3, "nextTab":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v4, v6

    .line 322
    .local v4, "nextTabLeft":F
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v5, v6

    .line 323
    .local v5, "nextTabRight":F
    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    sub-float v7, v8, v7

    mul-float/2addr v7, v1

    add-float v1, v6, v7

    .line 324
    iget v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    mul-float/2addr v6, v5

    iget v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    sub-float v7, v8, v7

    mul-float/2addr v7, v2

    add-float v2, v6, v7

    .line 327
    .end local v3    # "nextTab":Landroid/view/View;
    .end local v4    # "nextTabLeft":F
    .end local v5    # "nextTabRight":F
    :cond_0
    new-instance v6, Landroid/support/v4/util/Pair;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isExpandTabs:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabBackgroundResId:I

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    return v0
.end method

.method public getTabsContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isTabTextAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .prologue
    .line 228
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 229
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    if-ge v0, v3, :cond_1

    .line 232
    iget-boolean v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->isCustomTabs:Z

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    check-cast v3, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;

    invoke-interface {v3, p0, v0}, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;->getCustomTabView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 238
    .local v1, "tabView":Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 239
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-direct {p0, v0, v2, v1}, Lcom/astuetz/PagerSlidingTabStrip;->addTab(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "tabView":Landroid/view/View;
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/astuetz/pagerslidingtabstrip/R$layout;->psts_tab:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "tabView":Landroid/view/View;
    goto :goto_1

    .line 242
    .end local v1    # "tabView":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 243
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 509
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 510
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 513
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->setAttached(Z)V

    .line 516
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 520
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 521
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 524
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->setAttached(Z)V

    .line 527
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 371
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getHeight()I

    move-result v6

    .line 377
    .local v6, "height":I
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    if-lez v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 379
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 382
    .local v9, "tab":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    int-to-float v2, v0

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    sub-int v0, v6, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 380
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 387
    .end local v7    # "i":I
    .end local v9    # "tab":Landroid/view/View;
    :cond_2
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    if-lez v0, :cond_3

    .line 388
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mRectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    int-to-float v1, v0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingRight:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->mRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 393
    :cond_3
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    if-lez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mRectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getIndicatorCoordinates()Landroid/support/v4/util/Pair;

    move-result-object v8

    .line 396
    .local v8, "lines":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v0, v8, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    iget-object v0, v8, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->mRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v7, 0x0

    .line 332
    iget-boolean v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 333
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 334
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 335
    .local v0, "halfWidthFirstTab":I
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingRight:I

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    .line 338
    .end local v0    # "halfWidthFirstTab":I
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget-boolean v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingRight:I

    if-lez v3, :cond_2

    .line 340
    :cond_1
    iget-boolean v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    if-eqz v3, :cond_5

    .line 341
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getWidth()I

    move-result v2

    .line 348
    .local v2, "width":I
    :goto_0
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 350
    invoke-virtual {p0, v7}, Lcom/astuetz/PagerSlidingTabStrip;->setClipToPadding(Z)V

    .line 353
    .end local v2    # "width":I
    :cond_2
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingRight:I

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/astuetz/PagerSlidingTabStrip;->setPadding(IIII)V

    .line 354
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    if-nez v3, :cond_3

    .line 355
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    .line 358
    :cond_3
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_4

    .line 359
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    .line 362
    :cond_4
    const/4 v3, 0x0

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    .line 363
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    invoke-direct {p0, v3, v7}, Lcom/astuetz/PagerSlidingTabStrip;->scrollToChild(II)V

    .line 364
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    invoke-direct {p0, v3}, Lcom/astuetz/PagerSlidingTabStrip;->updateSelection(I)V

    .line 365
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 366
    return-void

    .line 344
    :cond_5
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingRight:I

    sub-int v2, v3, v4

    .restart local v2    # "width":I
    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 531
    move-object v0, p1

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip$SavedState;

    .line 532
    .local v0, "savedState":Lcom/astuetz/PagerSlidingTabStrip$SavedState;
    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 533
    iget v1, v0, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->currentPosition:I

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    .line 534
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->unSelect(Landroid/view/View;)V

    .line 536
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->select(Landroid/view/View;)V

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->requestLayout()V

    .line 539
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 543
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 544
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/astuetz/PagerSlidingTabStrip$SavedState;

    invoke-direct {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 545
    .local v0, "savedState":Lcom/astuetz/PagerSlidingTabStrip$SavedState;
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    iput v2, v0, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->currentPosition:I

    .line 546
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->isTabTextAllCaps:Z

    .line 716
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 678
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerColor:I

    .line 679
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 680
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerColor:I

    .line 684
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 685
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    .line 698
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    .line 699
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 700
    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0
    .param p1, "dividerWidthPx"    # I

    .prologue
    .line 688
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    .line 689
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 690
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 653
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorColor:I

    .line 654
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 655
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorColor:I

    .line 659
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 660
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    .line 663
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    .line 664
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 665
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDelegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 406
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;)V
    .locals 0
    .param p1, "tabReselectedListener"    # Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    .line 402
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    .line 703
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    .line 704
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 705
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 1
    .param p1, "shouldExpand"    # Z

    .prologue
    .line 708
    iput-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->isExpandTabs:Z

    .line 709
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->requestLayout()V

    .line 712
    :cond_0
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 773
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabBackgroundResId:I

    .line 774
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .param p1, "paddingPx"    # I

    .prologue
    .line 777
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    .line 778
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 779
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 728
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->createColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 729
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 737
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 738
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(I)V

    .line 725
    return-void
.end method

.method public setTextColorStateListResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 733
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSizePx"    # I

    .prologue
    .line 719
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    .line 720
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 721
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 767
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypeface:Landroid/graphics/Typeface;

    .line 768
    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypefaceStyle:I

    .line 769
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 770
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 668
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineColor:I

    .line 669
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 670
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineColor:I

    .line 674
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 675
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 693
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    .line 694
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 695
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 216
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;

    iput-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isCustomTabs:Z

    .line 221
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 222
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 223
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->setAttached(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 225
    return-void
.end method
