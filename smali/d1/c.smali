.class final Ld1/c;
.super Lz0/a$a;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz0/a$a<",
        "Ld1/e;",
        "Lb1/v;",
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
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lb1/e;Ljava/lang/Object;La1/d;La1/j;)Lz0/a$f;
    .locals 7

    .line 1
    move-object v4, p4

    check-cast v4, Lb1/v;

    .line 2
    new-instance p0, Ld1/e;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ld1/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lb1/e;Lb1/v;La1/d;La1/j;)V

    return-object p0
.end method
