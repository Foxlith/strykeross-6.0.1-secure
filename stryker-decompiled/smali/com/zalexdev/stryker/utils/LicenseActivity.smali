.class public Lcom/zalexdev/stryker/utils/LicenseActivity;
.super Lf/q;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0020

    invoke-virtual {p0, p1}, Lf/q;->setContentView(I)V

    const p1, 0x7f0a0361

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    new-instance v0, Lcom/nambimobile/widgets/efab/a;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a035e

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    new-instance v0, Lq3/c;

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Android & Java libraries"

    invoke-static {v2}, Lcom/zalexdev/stryker/custom/License;->section(Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "https://developer.android.com/jetpack/androidx/releases/appcompat"

    const-string v3, "AndroidX AppCompat"

    const-string v4, "Apache License 2.0"

    const-string v5, "The Android Open Source Project"

    invoke-static {v3, v4, v5, v2}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Material Components for Android"

    const-string v3, "Google LLC"

    const-string v6, "https://github.com/material-components/material-components-android"

    invoke-static {v2, v4, v3, v6}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "AndroidX ConstraintLayout"

    const-string v3, "https://github.com/androidx/constraintlayout"

    invoke-static {v2, v4, v5, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "AndroidX Legacy Support v4"

    const-string v3, "https://developer.android.com/jetpack/androidx/releases/legacy"

    invoke-static {v2, v4, v5, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "AndroidX RecyclerView"

    const-string v3, "https://developer.android.com/jetpack/androidx/releases/recyclerview"

    invoke-static {v2, v4, v5, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "AndroidX Security Crypto"

    const-string v3, "https://developer.android.com/jetpack/androidx/releases/security"

    invoke-static {v2, v4, v5, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "AndroidX Lifecycle"

    const-string v3, "https://developer.android.com/jetpack/androidx/releases/lifecycle"

    invoke-static {v2, v4, v5, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "AndroidX Annotation"

    const-string v3, "https://developer.android.com/jetpack/androidx/releases/annotation"

    invoke-static {v2, v4, v5, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "AndroidX CardView"

    const-string v3, "https://developer.android.com/jetpack/androidx/releases/cardview"

    invoke-static {v2, v4, v5, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "AndroidX Preference"

    const-string v3, "https://developer.android.com/jetpack/androidx/releases/preference"

    invoke-static {v2, v4, v5, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "OkHttp"

    const-string v3, "Square, Inc."

    const-string v5, "https://square.github.io/okhttp/"

    invoke-static {v2, v4, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "ExpandableLayout"

    const-string v3, "Copyright 2016 Daniel Cachapa"

    const-string v5, "https://github.com/cachapa/ExpandableLayout"

    invoke-static {v2, v4, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Lottie"

    const-string v3, "Airbnb, Inc."

    const-string v5, "https://github.com/airbnb/lottie-android"

    invoke-static {v2, v4, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "IPAddress"

    const-string v3, "Sean C. Foley"

    const-string v5, "https://github.com/seancfoley/IPAddress"

    invoke-static {v2, v4, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Copyright (c) 2009-2024 Jonathan Hedley"

    const-string v3, "https://jsoup.org/license"

    const-string v5, "jsoup"

    const-string v6, "MIT License"

    invoke-static {v5, v6, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Meta Platforms, Inc. and affiliates"

    const-string v3, "https://github.com/facebook/shimmer-android"

    const-string v5, "Shimmer for Android"

    const-string v7, "BSD 3-Clause License"

    invoke-static {v5, v7, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "The jCIFS Project \u2014 Michael B. Allen"

    const-string v3, "https://jcifs.samba.org/"

    const-string v5, "jCIFS"

    const-string v8, "GNU LGPL v2.1"

    invoke-static {v5, v8, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "https://commons.apache.org/proper/commons-net/"

    const-string v3, "Apache Commons Net"

    const-string v5, "The Apache Software Foundation"

    invoke-static {v3, v4, v5, v2}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "osmdroid"

    const-string v3, "The osmdroid contributors"

    const-string v8, "https://github.com/osmdroid/osmdroid"

    invoke-static {v2, v4, v3, v8}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "The Legion of the Bouncy Castle Inc."

    const-string v3, "https://www.bouncycastle.org/licence.html"

    const-string v8, "Bouncy Castle (bcpkix)"

    const-string v9, "Bouncy Castle Licence (MIT-style)"

    invoke-static {v8, v9, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Apache Commons Codec"

    const-string v3, "https://commons.apache.org/proper/commons-codec/"

    invoke-static {v2, v4, v5, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "TapTargetView"

    const-string v3, "Copyright 2016 Keepsafe Software Inc."

    const-string v5, "https://github.com/KeepSafe/TapTargetView"

    invoke-static {v2, v4, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "ExpandableFab"

    const-string v3, "Copyright (c) 2020 Kelvin Abumere, The Nambi Company"

    const-string v5, "https://github.com/nambicompany/expandable-fab"

    invoke-static {v2, v6, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Bundled terminal"

    invoke-static {v2}, Lcom/zalexdev/stryker/custom/License;->section(Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "NeoTerm authors \u2014 basis of the bundled terminal"

    const-string v3, "https://github.com/NeoTerrm/NeoTerm"

    const-string v5, "NeoTerm"

    const-string v8, "GNU GPL v3.0"

    invoke-static {v5, v8, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Termux contributors; Android Terminal Emulator (Jack Palevich, AOSP)"

    const-string v3, "https://github.com/termux/termux-app/blob/master/LICENSE.md"

    const-string v5, "Termux terminal-emulator / terminal-view"

    const-string v8, "GNU GPL v3.0 (Apache-2.0 upstream code)"

    invoke-static {v5, v8, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "EventBus"

    const-string v3, "Markus Junginger, greenrobot"

    const-string v5, "https://github.com/greenrobot/EventBus"

    invoke-static {v2, v4, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "RecyclerView-FastScroll"

    const-string v3, "Tim Malseed; The Android Open Source Project"

    const-string v5, "https://github.com/timusus/RecyclerView-FastScroll"

    invoke-static {v2, v4, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Copyright (C) 2016 GrenderG"

    const-string v3, "https://github.com/GrenderG/Color-O-Matic"

    const-string v5, "Color-O-Matic"

    const-string v8, "GNU GPL v3.0 or later"

    invoke-static {v5, v8, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Hai Zhang; OpenJDK (Oracle and/or its affiliates)"

    const-string v3, "https://github.com/zhanghai/AndroidRetroFile"

    const-string v5, "AndroidRetroFile"

    const-string v9, "GNU GPL v2.0 with Classpath Exception"

    invoke-static {v5, v9, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "libsu"

    const-string v3, "John \"topjohnwu\" Wu"

    const-string v5, "https://github.com/topjohnwu/libsu"

    invoke-static {v2, v4, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "AndroidUtil"

    const-string v3, "Michael Rapp"

    const-string v5, "https://github.com/michael-rapp/AndroidUtil"

    invoke-static {v2, v4, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Bundled binaries"

    invoke-static {v2}, Lcom/zalexdev/stryker/custom/License;->section(Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Erik Andersen, Rob Landley, Denys Vlasenko et al."

    const-string v3, "https://busybox.net/license.html"

    const-string v5, "BusyBox"

    const-string v9, "GNU GPL v2.0 only"

    invoke-static {v5, v9, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Dedicated to the public domain by its authors (Hwaci)"

    const-string v3, "https://www.sqlite.org/copyright.html"

    const-string v5, "SQLite"

    const-string v9, "Public Domain"

    invoke-static {v5, v9, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Chroot environment & security tools"

    invoke-static {v2}, Lcom/zalexdev/stryker/custom/License;->section(Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "The Debian Project and contributors"

    const-string v3, "https://www.debian.org/"

    const-string v5, "Debian GNU/Linux"

    const-string v9, "Mixed free licences \u2014 GPL, LGPL, MIT, BSD and others"

    invoke-static {v5, v9, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Metasploit Framework"

    const-string v3, "Copyright (c) 2006-2024 Rapid7, Inc."

    const-string v5, "https://github.com/rapid7/metasploit-framework/blob/master/LICENSE"

    invoke-static {v2, v7, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "MSFPC"

    const-string v3, "Copyright (c) 2015 g0tmi1k"

    const-string v5, "https://github.com/g0tmi1k/msfpc"

    invoke-static {v2, v6, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Nuclei"

    const-string v3, "ProjectDiscovery, Inc."

    const-string v5, "https://github.com/projectdiscovery/nuclei/blob/main/LICENSE.md"

    invoke-static {v2, v6, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Nmap Software LLC (Gordon Lyon)"

    const-string v3, "https://nmap.org/npsl/"

    const-string v5, "Nmap"

    const-string v7, "Nmap Public Source License (NPSL)"

    invoke-static {v5, v7, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "van Hauser / THC; David Maciejak"

    const-string v3, "https://github.com/vanhauser-thc/thc-hydra"

    const-string v5, "THC-Hydra"

    const-string v7, "GNU AGPL v3.0 (with OpenSSL exception)"

    invoke-static {v5, v7, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Thomas d\'Otreppe; Christophe Devine"

    const-string v3, "https://github.com/aircrack-ng/aircrack-ng/blob/master/LICENSE"

    const-string v5, "aircrack-ng"

    const-string v7, "GNU GPL v2.0 or later"

    invoke-static {v5, v7, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "mdk4"

    const-string v3, "ASPj, E7mer and the aircrack-ng community"

    const-string v5, "https://github.com/aircrack-ng/mdk4"

    invoke-static {v2, v8, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Johannes Berg and contributors"

    const-string v3, "https://wireless.wiki.kernel.org/en/users/documentation/iw"

    const-string v5, "iw"

    const-string v8, "ISC License"

    invoke-static {v5, v8, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Exploit-DB / SearchSploit"

    const-string v3, "OffSec Services Limited"

    const-string v5, "https://gitlab.com/exploit-database/exploitdb/-/blob/main/LICENSE.md"

    invoke-static {v2, v7, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Copyright (c) Todd C. Miller"

    const-string v3, "https://www.sudo.ws/about/license/"

    const-string v5, "sudo"

    const-string v7, "ISC-style (sudo licence)"

    invoke-static {v5, v7, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Copyright (c) 2002-2010 Karl J. Runge"

    const-string v3, "https://github.com/LibVNC/x11vnc/blob/master/COPYING"

    const-string v5, "x11vnc"

    const-string v7, "GNU GPL v2.0 or later (OpenSSL exception)"

    invoke-static {v5, v7, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Xfce Development Team"

    const-string v3, "https://www.xfce.org/"

    const-string v5, "Xfce desktop"

    const-string v7, "GNU GPL v2.0"

    invoke-static {v5, v7, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "The X.Org Foundation and contributors"

    const-string v3, "https://www.x.org/"

    const-string v5, "X.Org (Xvfb, xset, xrdb)"

    const-string v7, "MIT / X11 License"

    invoke-static {v5, v7, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Red Hat, Inc. and D-Bus contributors"

    const-string v3, "https://gitlab.freedesktop.org/dbus/dbus/-/blob/master/COPYING"

    const-string v5, "D-Bus"

    const-string v7, "GPL-2.0-or-later OR AFL-2.1"

    invoke-static {v5, v7, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Mesa 3D"

    const-string v3, "Copyright (c) 1999-2007 Brian Paul and contributors"

    const-string v5, "https://docs.mesa3d.org/license.html"

    invoke-static {v2, v6, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Copyright (c) 1996-2024 Daniel Stenberg et al."

    const-string v3, "https://curl.se/docs/copyright.html"

    const-string v5, "cURL"

    const-string v6, "curl License (MIT-style)"

    invoke-static {v5, v6, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "OpenSSL"

    const-string v3, "The OpenSSL Project Authors"

    const-string v5, "https://openssl-library.org/source/license/"

    invoke-static {v2, v4, v3, v5}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Mozilla Foundation; Debian ca-certificates maintainers"

    const-string v3, "https://www.mozilla.org/MPL/2.0/"

    const-string v4, "ca-certificates (Mozilla CA bundle)"

    const-string v5, "MPL-2.0 AND MIT"

    invoke-static {v4, v5, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Bitstream, Inc.; Tavmjong Bah; DejaVu authors"

    const-string v3, "https://dejavu-fonts.github.io/License.html"

    const-string v4, "DejaVu fonts"

    const-string v5, "Bitstream Vera Fonts License (parts public domain)"

    invoke-static {v4, v5, v2, v3}, Lcom/zalexdev/stryker/custom/License;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-direct {v0, p0, p0, v1}, Lq3/c;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    return-void
.end method
