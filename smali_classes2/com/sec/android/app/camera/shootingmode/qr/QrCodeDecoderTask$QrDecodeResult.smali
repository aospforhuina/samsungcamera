.class public Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;
.super Ljava/lang/Object;
.source "QrCodeDecoderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QrDecodeResult"
.end annotation


# instance fields
.field mCroppedQrImage:Landroid/graphics/Bitmap;

.field mQrData:Ljava/lang/String;

.field mQrPositionArray:[I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
