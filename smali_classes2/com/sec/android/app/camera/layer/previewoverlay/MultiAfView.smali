.class public Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;
.super Landroid/widget/GridLayout;
.source "MultiAfView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MulTiAfView"


# instance fields
.field private final FRAME_IMAGE_SIZE:I

.field private final NUM_OF_COLS_FULL_RATIO:I

.field private final NUM_OF_COLS_NORMAL_RATIO:I

.field private final NUM_OF_COLS_SQUARE_RATIO:I

.field private final NUM_OF_COLS_WIDE_RATIO:I

.field private final NUM_OF_ROWS_FULL_RATIO:I

.field private final NUM_OF_ROWS_NORMAL_RATIO:I

.field private final NUM_OF_ROWS_SQUARE_RATIO:I

.field private final NUM_OF_ROWS_WIDE_RATIO:I

.field private final NUM_OF_VISIBLE_COLS:I

.field private final NUM_OF_VISIBLE_ROWS:I

.field private final SENSOR_FRAME_HEIGHT:I

.field private final SENSOR_FRAME_LEFT_OFFSET:I

.field private final SENSOR_FRAME_TOP_OFFSET:I

.field private final SENSOR_FRAME_WIDTH:I

.field private mFocusFrame:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b013f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b013b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0140

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_SQUARE_RATIO:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b013c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_SQUARE_RATIO:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0141

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_WIDE_RATIO:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b013d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_WIDE_RATIO:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b013e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_FULL_RATIO:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b013a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_FULL_RATIO:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0142

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_VISIBLE_COLS:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0143

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_VISIBLE_ROWS:I

    .line 12
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0133

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_WIDTH:I

    .line 13
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0130

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_HEIGHT:I

    .line 14
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0131

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_LEFT_OFFSET:I

    .line 15
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0132

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_TOP_OFFSET:I

    .line 16
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703b0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->FRAME_IMAGE_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b013f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b013b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0140

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_SQUARE_RATIO:I

    .line 21
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b013c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_SQUARE_RATIO:I

    .line 22
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0141

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_WIDE_RATIO:I

    .line 23
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b013d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_WIDE_RATIO:I

    .line 24
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b013e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_FULL_RATIO:I

    .line 25
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b013a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_FULL_RATIO:I

    .line 26
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0142

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_VISIBLE_COLS:I

    .line 27
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0143

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_VISIBLE_ROWS:I

    .line 28
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0133

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_WIDTH:I

    .line 29
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0130

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_HEIGHT:I

    .line 30
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0131

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_LEFT_OFFSET:I

    .line 31
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0132

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_TOP_OFFSET:I

    .line 32
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703b0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->FRAME_IMAGE_SIZE:I

    return-void
.end method

.method private init()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->mFocusFrame:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 3
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08062a

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    new-instance v2, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v2}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 6
    iget v3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->FRAME_IMAGE_SIZE:I

    iput v3, v2, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 7
    iput v3, v2, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->mFocusFrame:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setMargin(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method hide()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflate : MultiAfView["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MulTiAfView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->init()V

    return-void
.end method

.method public reset()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 2
    :goto_1
    iget v3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    if-ge v2, v3, :cond_0

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    .line 3
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->mFocusFrame:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method update([B)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    iget v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_VISIBLE_COLS:I

    sub-int/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_VISIBLE_ROWS:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    iget v4, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    if-ge v3, v4, :cond_4

    move v4, v2

    .line 4
    :goto_1
    iget v5, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    if-ge v4, v5, :cond_3

    mul-int v6, v3, v5

    add-int/2addr v6, v4

    .line 5
    aget-byte v6, p1, v6

    .line 6
    div-int/lit8 v7, v1, 0x2

    if-lt v3, v7, :cond_0

    iget v8, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    sub-int v7, v1, v7

    sub-int/2addr v8, v7

    if-ge v3, v8, :cond_0

    div-int/lit8 v7, v0, 0x2

    if-lt v4, v7, :cond_0

    sub-int v7, v0, v7

    sub-int v7, v5, v7

    if-lt v4, v7, :cond_1

    :cond_0
    move v6, v2

    :cond_1
    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    .line 7
    iget-object v7, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->mFocusFrame:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    const/4 v6, 0x4

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method updateLayout(Landroid/graphics/Rect;)V
    .locals 8

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v3, 0x0

    cmpg-float v4, v0, v3

    if-gez v4, :cond_1

    move v0, v3

    .line 6
    :cond_1
    invoke-static {v2, p1}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getAspectRatio(II)Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView$1;->$SwitchMap$com$sec$android$app$camera$interfaces$AspectRatio:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/high16 v4, 0x40000000    # 2.0f

    packed-switch v3, :pswitch_data_0

    .line 8
    sget-object v2, Lu3/l;->t:Lu3/l;

    invoke-static {v2}, Lu3/d;->c(Lu3/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    .line 9
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_HEIGHT:I

    int-to-float p1, p1

    div-float v3, p1, v2

    .line 10
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_WIDTH:I

    int-to-float p1, p1

    div-float v5, p1, v2

    .line 11
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_TOP_OFFSET:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr v0, p1

    .line 12
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_LEFT_OFFSET:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    .line 13
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    .line 14
    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    goto/16 :goto_0

    .line 15
    :pswitch_0
    sget-object v2, Lu3/l;->v:Lu3/l;

    invoke-static {v2}, Lu3/d;->c(Lu3/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    .line 16
    iget v3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 17
    iget v5, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_WIDTH:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    .line 18
    iget v6, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_FULL_RATIO:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    sub-float/2addr p1, v6

    div-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v0, p1

    .line 19
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_LEFT_OFFSET:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    .line 20
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_FULL_RATIO:I

    .line 21
    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_FULL_RATIO:I

    goto :goto_0

    .line 22
    :pswitch_1
    sget-object v3, Lu3/l;->p:Lu3/l;

    invoke-static {v3}, Lu3/d;->c(Lu3/l;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float p1, p1

    div-float/2addr v3, p1

    .line 23
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_HEIGHT:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 24
    iget v5, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_WIDTH:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 25
    iget v6, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_TOP_OFFSET:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v0, v6

    int-to-float v2, v2

    .line 26
    iget v3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_SQUARE_RATIO:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    .line 27
    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_SQUARE_RATIO:I

    .line 28
    iget v3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_SQUARE_RATIO:I

    move v7, v3

    move v3, p1

    move p1, v2

    move v2, v7

    goto :goto_0

    .line 29
    :pswitch_2
    sget-object v2, Lu3/l;->m:Lu3/l;

    invoke-static {v2}, Lu3/d;->c(Lu3/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    .line 30
    iget v3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 31
    iget v5, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_WIDTH:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    .line 32
    iget v6, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_WIDE_RATIO:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    sub-float/2addr p1, v6

    div-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v0, p1

    .line 33
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->SENSOR_FRAME_LEFT_OFFSET:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    .line 34
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_WIDE_RATIO:I

    .line 35
    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_WIDE_RATIO:I

    .line 36
    :goto_0
    iget v6, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    sub-int/2addr v6, v2

    int-to-float v2, v6

    div-float/2addr v2, v4

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 37
    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr p1, v4

    mul-float/2addr p1, v5

    sub-float/2addr v1, p1

    float-to-int p1, v0

    float-to-int v0, v1

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->setMargin(II)V

    .line 39
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->FRAME_IMAGE_SIZE:I

    int-to-float v0, p1

    sub-float/2addr v3, v0

    float-to-int v0, v3

    float-to-int v1, v5

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    .line 40
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    if-ge p1, v2, :cond_5

    .line 41
    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_4

    .line 42
    iget v3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 43
    iget v4, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    mul-int/2addr v4, v2

    add-int/2addr v4, p1

    .line 44
    iget-object v5, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->mFocusFrame:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/GridLayout$LayoutParams;

    if-nez v3, :cond_2

    .line 45
    div-int/lit8 v6, v0, 0x2

    goto :goto_3

    :cond_2
    move v6, v0

    :goto_3
    iput v6, v5, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    if-nez p1, :cond_3

    .line 46
    div-int/lit8 v6, v1, 0x2

    goto :goto_4

    :cond_3
    move v6, v1

    :goto_4
    iput v6, v5, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 47
    invoke-static {v3}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v3

    iput-object v3, v5, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 48
    invoke-static {p1}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v3

    iput-object v3, v5, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 49
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->mFocusFrame:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->mFocusFrame:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
