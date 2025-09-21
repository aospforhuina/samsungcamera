.class public Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;
.super Landroid/widget/TextView;
.source "QrActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;
    }
.end annotation


# instance fields
.field private mType:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5
    sget-object p1, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;->ACTION:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;->mType:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;->ACTION:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;->mType:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    return-void
.end method


# virtual methods
.method getType()Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;->mType:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;

    return-object p0
.end method

.method setType(Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;->mType:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;

    return-void
.end method
