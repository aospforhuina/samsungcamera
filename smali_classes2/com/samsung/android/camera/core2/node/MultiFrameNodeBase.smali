.class public abstract Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;
.super Lcom/samsung/android/camera/core2/node/Node2;
.source "MultiFrameNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;,
        Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;
    }
.end annotation


# instance fields
.field private mCurrentInputCount:I

.field private mCurrentYuvInputCount:I

.field private mMaxInputCount:I

.field private mRequiredYuvInputCount:I


# direct methods
.method protected constructor <init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;I)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;ZI)V

    return-void
.end method

.method protected constructor <init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/Node2;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mCurrentInputCount:I

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mCurrentYuvInputCount:I

    .line 4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    new-instance p2, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;-><init>(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/core2/node/Node$InputPort;->e(Lcom/samsung/android/camera/core2/node/Node$CoreInterface;)V

    return-void
.end method

.method protected constructor <init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;ZI)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    .line 7
    iput p4, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mMaxInputCount:I

    return-void
.end method

.method static bridge synthetic e(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mCurrentInputCount:I

    return p0
.end method

.method static bridge synthetic f(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mCurrentYuvInputCount:I

    return p0
.end method

.method static bridge synthetic g(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mMaxInputCount:I

    return p0
.end method

.method static bridge synthetic h(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mRequiredYuvInputCount:I

    return p0
.end method

.method static bridge synthetic i(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mCurrentInputCount:I

    return-void
.end method

.method static bridge synthetic j(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mCurrentYuvInputCount:I

    return-void
.end method


# virtual methods
.method public getCurrentCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mCurrentInputCount:I

    return p0
.end method

.method public getCurrentYuvInputCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mCurrentYuvInputCount:I

    return p0
.end method

.method public getMaxInputCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mMaxInputCount:I

    return p0
.end method

.method public getRequiredYuvInputCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mRequiredYuvInputCount:I

    return p0
.end method

.method public isMaxInputCount()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mCurrentInputCount:I

    iget p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mMaxInputCount:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMaxYuvInputCount()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mCurrentYuvInputCount:I

    iget p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mRequiredYuvInputCount:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public reconfigure(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mCurrentInputCount:I

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mCurrentYuvInputCount:I

    return-void
.end method

.method public release()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/camera/core2/node/Node;->release()V

    return-void
.end method

.method protected resetCurrentInputCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mCurrentInputCount:I

    return-void
.end method

.method public setMaxInputCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mMaxInputCount:I

    return-void
.end method

.method public setRequiredYuvInputCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->mRequiredYuvInputCount:I

    return-void
.end method
