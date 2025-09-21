.class final Ln1/b;
.super Lz0/a$a;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz0/a$a<",
        "Lo1/a;",
        "Ln1/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz0/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Landroid/content/Context;Landroid/os/Looper;Lb1/e;Ljava/lang/Object;Lz0/f$a;Lz0/f$b;)Lz0/a$f;
    .locals 8

    .line 1
    check-cast p4, Ln1/a;

    .line 2
    new-instance p0, Lo1/a;

    .line 3
    invoke-static {p3}, Lo1/a;->j0(Lb1/e;)Landroid/os/Bundle;

    move-result-object v5

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 4
    invoke-direct/range {v0 .. v7}, Lo1/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLb1/e;Landroid/os/Bundle;Lz0/f$a;Lz0/f$b;)V

    return-object p0
.end method
