.class public final synthetic Lp5/r0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lp5/u0$a;


# instance fields
.field public final synthetic a:Lp5/u0;


# direct methods
.method public synthetic constructor <init>(Lp5/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5/r0;->a:Lp5/u0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)Z
    .locals 0

    iget-object p0, p0, Lp5/r0;->a:Lp5/u0;

    invoke-static {p0, p1}, Lp5/u0;->a(Lp5/u0;Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)Z

    move-result p0

    return p0
.end method
