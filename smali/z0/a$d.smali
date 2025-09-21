.class public interface abstract Lz0/a$d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/a$d$c;,
        Lz0/a$d$b;,
        Lz0/a$d$a;
    }
.end annotation


# static fields
.field public static final a:Lz0/a$d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz0/a$d$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz0/a$d$c;-><init>(Lz0/n;)V

    sput-object v0, Lz0/a$d;->a:Lz0/a$d$c;

    return-void
.end method
