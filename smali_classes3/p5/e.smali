.class public final synthetic Lp5/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lp5/f;


# direct methods
.method public synthetic constructor <init>(Lp5/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5/e;->a:Lp5/f;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lp5/e;->a:Lp5/f;

    check-cast p1, Landroid/widget/Button;

    invoke-static {p0, p1}, Lp5/f;->g(Lp5/f;Landroid/widget/Button;)V

    return-void
.end method
