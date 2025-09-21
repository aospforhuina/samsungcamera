.class public final synthetic Lm3/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm3/f$b;


# direct methods
.method public synthetic constructor <init>(Lm3/f$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/g;->a:Lm3/f$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lm3/g;->a:Lm3/f$b;

    invoke-static {p0}, Lm3/f$b;->a(Lm3/f$b;)V

    return-void
.end method
