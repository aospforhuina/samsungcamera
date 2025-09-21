.class public final synthetic Lp5/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lp5/f$d;


# instance fields
.field public final synthetic a:Lp5/f$b;


# direct methods
.method public synthetic constructor <init>(Lp5/f$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5/z;->a:Lp5/f$b;

    return-void
.end method


# virtual methods
.method public final a(Lp5/f$e;Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lp5/z;->a:Lp5/f$b;

    invoke-static {p0, p1, p2}, Lp5/f$b;->e(Lp5/f$b;Lp5/f$e;Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
