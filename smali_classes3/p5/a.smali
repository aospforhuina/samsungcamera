.class public final synthetic Lp5/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lp5/f;


# direct methods
.method public synthetic constructor <init>(Lp5/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5/a;->a:Lp5/f;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lp5/a;->a:Lp5/f;

    invoke-static {p0, p1}, Lp5/f;->d(Lp5/f;Landroid/content/DialogInterface;)V

    return-void
.end method
