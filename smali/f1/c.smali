.class public Lf1/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.0"

# interfaces
.implements Lf1/b;


# static fields
.field private static final a:Lf1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf1/c;

    invoke-direct {v0}, Lf1/c;-><init>()V

    sput-object v0, Lf1/c;->a:Lf1/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lf1/b;
    .locals 1

    sget-object v0, Lf1/c;->a:Lf1/c;

    return-object v0
.end method
