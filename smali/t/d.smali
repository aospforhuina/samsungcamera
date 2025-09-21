.class public Lt/d;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static a:Lh/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt/c;

    invoke-direct {v0}, Lt/c;-><init>()V

    sput-object v0, Lt/d;->a:Lh/s;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lt/d;->a:Lh/s;

    invoke-interface {v0, p0}, Lh/s;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lt/d;->a:Lh/s;

    invoke-interface {v0, p0, p1}, Lh/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lt/d;->a:Lh/s;

    invoke-interface {v0, p0}, Lh/s;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lt/d;->a:Lh/s;

    invoke-interface {v0, p0, p1}, Lh/s;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
