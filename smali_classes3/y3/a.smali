.class public final synthetic Ly3/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly3/a;->a:Landroid/content/Context;

    iput-object p2, p0, Ly3/a;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ly3/a;->a:Landroid/content/Context;

    iget-object p0, p0, Ly3/a;->b:Landroid/os/Bundle;

    check-cast p1, La4/b;

    invoke-static {v0, p0, p1}, Ly3/c;->a(Landroid/content/Context;Landroid/os/Bundle;La4/b;)V

    return-void
.end method
