.class public final synthetic Lcom/sec/android/app/camera/layer/popup/qrcode/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/c;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/c;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->i(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
