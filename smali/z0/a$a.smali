.class public abstract Lz0/a$a;
.super Lz0/a$e;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lz0/a$f;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lz0/a$e<",
        "TT;TO;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz0/a$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Looper;Lb1/e;Ljava/lang/Object;La1/d;La1/j;)Lz0/a$f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lb1/e;",
            "TO;",
            "La1/d;",
            "La1/j;",
            ")TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "buildClient must be implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Landroid/content/Context;Landroid/os/Looper;Lb1/e;Ljava/lang/Object;Lz0/f$a;Lz0/f$b;)Lz0/a$f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lb1/e;",
            "TO;",
            "Lz0/f$a;",
            "Lz0/f$b;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lz0/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lb1/e;Ljava/lang/Object;La1/d;La1/j;)Lz0/a$f;

    move-result-object p0

    return-object p0
.end method
