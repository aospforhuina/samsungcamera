.class public final synthetic Lp5/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lp5/f;


# direct methods
.method public synthetic constructor <init>(Lp5/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5/c;->a:Lp5/f;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lp5/c;->a:Lp5/f;

    invoke-static {p0, p1}, Lp5/f;->h(Lp5/f;Landroid/view/View;)V

    return-void
.end method
