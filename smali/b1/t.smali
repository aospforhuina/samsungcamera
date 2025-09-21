.class public Lb1/t;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# direct methods
.method public static a(Landroid/content/Context;)Lb1/u;
    .locals 1

    sget-object v0, Lb1/v;->c:Lb1/v;

    invoke-static {p0, v0}, Lb1/t;->b(Landroid/content/Context;Lb1/v;)Lb1/u;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lb1/v;)Lb1/u;
    .locals 1

    new-instance v0, Ld1/d;

    invoke-direct {v0, p0, p1}, Ld1/d;-><init>(Landroid/content/Context;Lb1/v;)V

    return-object v0
.end method
