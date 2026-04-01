local addonName = "RuneBrowser"

local spellsUncommon = {
    424,425,426,429,449,450,451,452,455,460,466,473,474,476,477,
478,479,480,481,484,485,486,487,488,489,490,492,493,494,495,
496,497,499,500,501,502,504,505,506,507,508,509,510,511,513,
515,516,517,519,520,523,524,525,531,532,533,534,535,536,537,
539,540,541,542,544,545,549,551,554,555,557,558,559,560,561,
562,564,565,566,567,569,570,572,573,574,575,576,577,582,583,
584,590,593,595,599,607,608,609,610,612,613,614,615,616,617,
619,620,621,622,623,626,627,628,629,630,631,632,634,636,637,
638,640,644,645,646,648,649,650,653,655,656,658,659,660,661,
662,663,664,665,666,667,675,677,679,680,681,682,683,685,690,
704,711,713,714,715,716,717,718,719,722,723,725,726,728,730,
732,733,734,735,736,737,738,743,748,751,752,753,754,756,758,
760,761,762,763,764,766,767,771,773,775,776,777,778,784,786,
787,788,790,792,795,796,797,803,805,807,808,809,810,811,819,
820,821,832,838,839,840,841,842,844,846,847,848,849,850,852,
854,855,856,859,860,861,862,866,867,868,869,870,873,874,875,
876,877,878,880,881,882,884,885,886,887,889,890,892,893,894,
896,899,901,902,903,904,906,908,909,910,911,912,914,916,917,
918,919,920,922,923,924,926,927,928,929,931,933,934,937,938,
940,941,942,944,947,948,949,950,951,953,954,955,956,957,958,
961,962,963,964,966,967,968,969,971,972,973,975,978,979,981,
983,985,986,987,991,993,995,998,999,1000,1001,1005,1007,1009,1011,
1012,1013,1015,1016,1017,1018,1019,1020,1023,1025,1027,1028,1029,1030,1031,
1033,1034,1036,1037,1039,1040,1043,1045,1046,1047,1048,1049,1051,1052,1054,
1055,1056,1057,1059,1060,1063,1065,1067,1068,1069,1070,1071,1073,1074,1077,
1078,1080,1083,1084,1087,1089,1091,1092,1093,1095,1097,1099,1100,1101,1102,
1103,1104,1105,1109,1110,1111,1112,1113,1114,1117,1118,1123,1124,1125,1128,
1132,1136,1141,1142,1143,1144,1145,1147,1149,1150,1151,1153,1155,1156,1157,
1158,1162,1163,1164,1165,1166,1167,1168,1169,1170,1172,1173,1174,1175,1176,
1179,1181,1182,1183,1184,1185,1186,1187,1188,1190,1191,1192,1193,1195,1197,
1198,1200,1201,1202,1203,1204,1205,1207,1208,1209,1212,1213,1215,1216,1217,
1218,1219,1220,1221,1222,1224,1226,1227,1229,1231,1233,1235,1236,1238,1239,
1240,1242,1246,1247,1248,1252,1254,1255,1256,1257,1258,1260,1261,1264,1268,
1269,1270,1271,1272,1273,1275,1277,1278,1279,1281,1282,1283,1284,1286,1287,
1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1299,1300,1301,1303,1304,
1306,1307,1308,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1322,
1324,1325,1326,1327,1331,1332,1333,1334,1335,1336,1337,1338,1339,1341,1342,
1343,1344,1345,1347,1348,1349,1351,1352,1354,1355,1356,1357,1358,1359,1360,
1361,1362,1363,1365,1366,1367,1368,1369,1370,1371,1372,1374,1375,1376,1377,
1378,1380,1381,1382,1383,1384,1385,1388,1389,1390,1391,1392,1393,1394,1395,
1396,1398,1399,1400,1401,1403,1404,1405,1406,1408,1409,1410,1411,1412,1414,
1415,1417,1418,1419,1420,1421,1422,1423,1424,1425,1427,1428,1429,1431,1432,
1433,1434,1435,1436,1437,1438,1441,1442,1443,1444,1445,1447,1448,1451,1452,
1453,1458,1465,1466,1468,1469,1470,1476,1477,1478,1479,1480,1482,1483,1484,
1486,1487,1488,1489,1491,1492,1493,1496,1497,1498,1500,1502,1503,1504,1505,
1507,1511,1512,1514,1518,1519,1520,1523,1524,1525,1526,1527,1529,1530,1532,
1533,1534,1537,1540,1542,1544,1545,1546,1547,1549,1550,1551,1552,1553,1555,
1556,1559,1562,1563,1564,1565,1567,1568,1570,1571,1572,1573,1574,1576,1577,
1578,1580,1581,1582,1584,1585,1586,1587,1590,1591,1592,1593,1594,1595,1596,
1597,1598,1599,1602,1603,1605,1606,1607,1610,1611,1612,1613,1614,1616,1617,
1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1630,1631,1632,1634,1635,
1636,1637,1638,1639,1641,1643,1644,1647,1648,1649,1651,1653,1654,1655,1656,
1657,1658,1659,1661,1662,1663,1667,1668,1674,1675,1678,1681,1682,1683,1684,
1685,1686,1687,1689,1690,1692,1693,1694,1695,1696,1698,1699,1700,1701,1702,
1703,1704,1705,1707,1708,1709,1711,1713,1716,1717,1718,1720,1721,1723,1726,
1727,1730,1732,1733,1734,1737,1738,1739,1740,1741,1743,1744,1745,1746,1761,
1762,1763,1764,1765,1771,1772,1774,1775,1778,1779,1780,1781,1782,1788,1789,
1790,1792,1793,1794,1801,1802,1803,1805,1806,1807,1812,1813,1814,1815,1816,
1817,1818,1819,1820,1821,1826,1827,1828,1829,1830,1832,1835,1836,1837,1838,
1839,1840,1841,1845,1847,1849,1851,1854,1855,1858,1861,1862,1863,1864,1865,
1866,1867,1868,1869,1870,1871,1872,1873,1875,1876,1877,1878,1879,1882,1883,
1884,1885,1886,1887,1888,1890,1891,1892,1893,1894,1895,1897,1898,1899,1900,
1901,1902,1903,1904,1907,1909,1910,1911,1912,1914,1915,1916,1917,1918,1919,
1920,1921,1922,1923,1924,1925,1926,1930,1931,1932,1933,1934,1935,1937,1938,
1939,1941,1942,1945,1947,1948,1951,1952,1954,1955,1956,1957,1958,1959,1960,
1962,1964,1967,1968,1969,1970,1971,1973,1974,1975,1976,1977,1979,1981,1982,
1983,1984,1986,1987,1988,1989,1990,1992,1994,1995,1996,1997,1998,1999,2001,
2002,2003,2005,2007,2009,2011,2012,2013,2014,2015,2016,2017,2019,2022,2025,
2026,2027,2028,2030,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,
2043,2044,2045,2046,2049,2051,2056,2057,2058,2059,2064,2065,2066,2067,2068,
2069,2071,2072,2074,2076,2077,2078,2080,2081,2082,2083,2084,2085,2086,2087,
2088,2089,2092,2093,2097,2099,2100,2101,2102,2104,2105,2106,2107,2109,2111,
2112,2113,2114,2115,2116,2122,2126,2127,2128,2129,2131,2132,2133,2134,2135,
2144,2145,2146,2150,2151,2172,2173,2174,2175,2176,2178,2179,2180,2181,2182,
2183,2184,2185,2186,2187,2189,2190,2191,2192,2193,2196,2197,2198,2199,2202,
2203,2204,2205,2207,2208,2209,2210,2211,2213,2214,2215,2216,2217,2218,2219,
2221,2223,2224,2225,2226,2227,2228,2229,2230,2231,2232,2233,2234,2235,2236,
2237,2238,2239,2241,2242,2243,2245,2246,2247,2249,2250,2251,2252,2256,2258,
2260,2261,2262,2264,2265,2266,2267,2268,2269,2270,2271,2272,2273,2274,2276,
2277,2278,2279,2281,2282,2283,2284,2285,2286,2287,2288,2289,2290,2291,2292,
2293,2294,2295,2296,2297,2298,2299,2300,2301,2302,2303,2304,2305,2306,2307,
2308,2309,2310,2311,2312,2314,2315,2316,2317,2318,2319,2320,2321,2322,2323,
2324,2325,2326,2327,2328,2338,2339,2340,2341,2342,2343,2344,2345,2346,2347,
2348,2349,2350,2351,2352,2353,2354,2355,2356,2357,2358,2359,2360,2361,2363,
2364,2365,2375,2377,2384,2388,2390,2391,2398,2404,2405,2407,2408,2409,2410,
2411,2412,2413,2414,2415,2416,2417,2418,2419,2420,2421,2422,2423,2424,2427,
2428,2429,2430,2431,2441,2445,2483,2486,2487,2488,2489,2490,2491,2492,2494,
2495
}

local spellsRare = {
    54733, 54754, 54756, 54760, 54810, 54811, 54815, 54818, 54821,
    54824, 54825, 54826, 54830, 54922, 54925, 54926, 54929, 54930,
    54935, 54936, 54937, 54938, 54939, 54940, 54943, 55436, 55437, 
    55438, 55439, 55440, 55442, 55443, 55444, 55445, 55448, 55449, 
    55450, 55451, 55452, 55675, 55676, 55677, 55678, 55679, 55680,
    55681, 55682, 55683, 55684, 55685, 55686, 55687, 55688, 55689,
    55690, 55691, 55692, 56216, 56217, 56218, 56228, 56229, 56233,
    56241, 56242, 56244, 56246, 56247, 56248, 56250, 56360, 56363,
    56364, 56365, 56366, 56367, 56368, 56369, 56370, 56371, 56375,
    56377, 56380, 56381, 56414, 56799, 56800, 56802, 56803, 56804,
    56805, 56806, 56808, 56809, 56810, 56811, 56812, 56813, 56814,
    56818, 56819, 56820, 56824, 56826, 56828, 56830, 56833, 56841,
    56846, 56847, 56848, 56849, 56850, 56851, 56856, 56857, 57855,
    57856, 57857, 57862, 57870, 57900, 57902, 57924, 57925, 57927,
    57928, 57954, 57985, 57986, 57987, 58017, 58027, 58032, 58038,
    58039, 58055, 58058, 58059, 58070, 58081, 58096, 58099, 58104,
    58107, 58365, 58366, 58367, 58368, 58369, 58370, 58372, 58375,
    58376, 58377, 58382, 58384, 58385, 58386, 58387, 67598, 71013,
}

local spellsEpic = {
    -- add epic IDs here (WIP)
}

local spellsLegendary = {
    -- add legendary IDs here (WIP)
}

local frame = CreateFrame("Frame", "RuneBrowserFrame", UIParent)
frame:SetSize(512, 512)
frame:SetPoint("CENTER")
frame:EnableMouse(true)
frame:SetMovable(true)
frame:SetClampedToScreen(true)
frame:Hide()

local function PlayBagSound(open)
    if not PlaySound then return end
    local sound = open and "igBackPackOpen" or "igBackPackClose"
    pcall(PlaySound, sound)
end

frame:SetScript("OnShow", function() PlayBagSound(true) end)
frame:SetScript("OnHide", function() PlayBagSound(false) end)

UISpecialFrames = UISpecialFrames or {}
do
    local name = frame:GetName()
    local found = false
    for i = 1, #UISpecialFrames do
        if UISpecialFrames[i] == name then found = true break end
    end
    if not found then table.insert(UISpecialFrames, name) end
end

local cornerTextures = {
    { "TL", 256, 256, "TOPLEFT",     "TopLeft" },
    { "TR", 128, 256, "TOPRIGHT",    "TopRight" },
    { "BL", 256, 256, "BOTTOMLEFT",  "BottomLeft" },
    { "BR", 128, 256, "BOTTOMRIGHT", "BottomRight" },
}
for _, c in ipairs(cornerTextures) do
    local t = frame:CreateTexture(nil, "BORDER")
    t:SetSize(c[2], c[3])
    t:SetPoint(c[4])
    t:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-General-"..c[5])
    t:SetAlpha(0.75)
    frame[c[1]] = t
end

frame.TM = frame:CreateTexture(nil, "BORDER")
frame.TM:SetPoint("TOPLEFT", frame.TL, "TOPRIGHT")
frame.TM:SetPoint("BOTTOMRIGHT", frame.TR, "BOTTOMLEFT")
frame.TM:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-General-TopLeft")
frame.TM:SetTexCoord(0.5, 1.0, 0, 1)
frame.TM:SetAlpha(0.75)

frame.BM = frame:CreateTexture(nil, "BORDER")
frame.BM:SetPoint("TOPLEFT", frame.BL, "TOPRIGHT")
frame.BM:SetPoint("BOTTOMRIGHT", frame.BR, "BOTTOMLEFT")
frame.BM:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-General-BottomLeft")
frame.BM:SetTexCoord(0.5, 1.0, 0, 1)
frame.BM:SetAlpha(0.75)

frame.portrait = frame:CreateTexture(nil, "ARTWORK")
frame.portrait:SetSize(60, 60)
frame.portrait:SetPoint("TOPLEFT", 7, -6)

SetPortraitToTexture(frame.portrait, "Interface\\Icons\\INV_Misc_Book_04")
frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
frame.title:SetPoint("TOP", 0, -16)
frame.title:SetText("RuneBrowser")

local drag = CreateFrame("Frame", nil, frame)
drag:SetPoint("TOPLEFT", 8, -6)
drag:SetPoint("RIGHT", -8, 0)
drag:SetHeight(67)
drag:EnableMouse(true)
drag:SetScript("OnMouseDown", function(self, button)
    if button == "LeftButton" then
        frame:StartMoving()
    end
end)
drag:SetScript("OnMouseUp", function(self, button)
    if button == "LeftButton" then
        frame:StopMovingOrSizing()
    end
end)

drag:SetFrameLevel(frame:GetFrameLevel() + 1)

local close = CreateFrame("Button", "RuneBrowserCloseButton", frame, "UIPanelCloseButton")
close:SetPoint("TOPRIGHT", -30, -8)
close:SetFrameLevel(frame:GetFrameLevel() + 6)
if close.SetHitRectInsets then
    close:SetHitRectInsets(-4, -4, -4, -4)
end
close:SetScript("OnClick", function() frame:Hide() end)

local dropdown = CreateFrame("Frame", "RuneBrowserFilterDropDown", frame, "UIDropDownMenuTemplate")
dropdown:SetPoint("TOPRIGHT", -35, -40)
UIDropDownMenu_SetWidth(dropdown, 120)
local filterState = "UNCOMMON"

local function Filter_OnClick(self)
    filterState = self.value
    UIDropDownMenu_SetSelectedValue(dropdown, filterState)
    CloseDropDownMenus()
    UpdateList()
end

local filterOptions = {
    { text = "|cff1eff00Uncommon|r", value = "UNCOMMON" },
    { text = "|cff0070ddRare|r",    value = "RARE" },
    { text = "|cffa335eeEpic|r",    value = "EPIC" },
    { text = "|cffff8000Legendary|r", value = "LEGENDARY" },
}

local function Filter_Initialize()
    for _, opt in ipairs(filterOptions) do
        local info = UIDropDownMenu_CreateInfo()
        info.func = Filter_OnClick
        info.text = opt.text
        info.value = opt.value
        info.checked = (filterState == opt.value)
        UIDropDownMenu_AddButton(info)
    end
end

UIDropDownMenu_Initialize(dropdown, Filter_Initialize)
UIDropDownMenu_SetSelectedValue(dropdown, "UNCOMMON")

local searchQuery = ""
local searchBox = CreateFrame("EditBox", "RuneBrowserSearchBox", frame, "InputBoxTemplate")
searchBox:SetSize(160, 20)
searchBox:SetPoint("TOPLEFT", 85, -45)
searchBox:SetAutoFocus(false)
searchBox:SetMaxLetters(50)
searchBox:SetFrameLevel(frame:GetFrameLevel() + 2)

local searchIcon = frame:CreateTexture(nil, "ARTWORK")
searchIcon:SetSize(16, 16)
searchIcon:SetPoint("RIGHT", searchBox, "RIGHT", -3, -2)
searchIcon:SetTexture("Interface\\Common\\UI-Searchbox-Icon")

local searchPlaceholder = searchBox:CreateFontString(nil, "ARTWORK", "GameFontDisableSmall")
searchPlaceholder:SetPoint("LEFT", 0, 0)
searchPlaceholder:SetText("Search...")
searchPlaceholder:SetTextColor(0.6, 0.6, 0.6)
searchPlaceholder:SetAlpha(0.7)

searchBox:SetScript("OnTextChanged", function(self)
    local text = self:GetText()
    searchQuery = text:lower()
    if text == "" then
        searchPlaceholder:Show()
    else
        searchPlaceholder:Hide()
    end
    UpdateList()
end)
local function SearchBox_UpdatePlaceholder(self)
    if self:GetText() == "" then searchPlaceholder:Show() end
end
searchBox:SetScript("OnEditFocusGained", SearchBox_UpdatePlaceholder)
searchBox:SetScript("OnEditFocusLost", SearchBox_UpdatePlaceholder)
local function SearchBox_ClearFocus(self) self:ClearFocus() end
searchBox:SetScript("OnEscapePressed", SearchBox_ClearFocus)
searchBox:SetScript("OnEnterPressed", SearchBox_ClearFocus)

frame:SetScript("OnMouseDown", function()
    if searchBox:HasFocus() then searchBox:ClearFocus() end
end)

local infoBtn = CreateFrame("Button", "RuneBrowserInfoButton", frame)
infoBtn:SetSize(20, 20)
infoBtn:SetPoint("LEFT", searchBox, "RIGHT", 6, 0)
infoBtn:SetFrameLevel(frame:GetFrameLevel() + 2)

local infoBtnTex = infoBtn:CreateTexture(nil, "ARTWORK")
infoBtnTex:SetAllPoints()
infoBtnTex:SetTexture("Interface\\FriendsFrame\\InformationIcon")

local infoBtnHighlight = infoBtn:CreateTexture(nil, "HIGHLIGHT")
infoBtnHighlight:SetAllPoints()
infoBtnHighlight:SetTexture("Interface\\FriendsFrame\\InformationIcon")
infoBtnHighlight:SetAlpha(0.5)
infoBtn:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    GameTooltip:ClearLines()
    GameTooltip:AddLine("RuneBrowser", 0.82, 0.71, 0.55)
    GameTooltip:AddLine("is an addon that aims to list all currently available and future runes that exist within the gamefile. Use the Search function to look for specific spells, or the dropdown menu to filtre for rarity.", 0.8, 0.8, 0.8, true)
    GameTooltip:Show()
end)
infoBtn:SetScript("OnLeave", function() GameTooltip:Hide() end)

-- Minimap button
do
    local minimapBtn = CreateFrame("Button", "RuneBrowserMinimapButton", Minimap)
    minimapBtn:SetSize(32, 32)
    minimapBtn:SetFrameStrata("MEDIUM")

    minimapBtn.icon = minimapBtn:CreateTexture(nil, "BACKGROUND")
    minimapBtn.icon:SetSize(20, 20)
    minimapBtn.icon:SetPoint("CENTER", 0, 0)
    minimapBtn.icon:SetTexture("Interface\\Icons\\INV_Misc_Book_04")
    minimapBtn.border = minimapBtn:CreateTexture(nil, "BORDER")
    minimapBtn.border:SetSize(50, 50)
    minimapBtn.border:SetPoint("CENTER", 10, -10)
    minimapBtn.border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
    minimapBtn.highlight = minimapBtn:CreateTexture(nil, "HIGHLIGHT")
    minimapBtn.highlight:SetAllPoints(minimapBtn.icon)
    minimapBtn.highlight:SetTexture("Interface\\Buttons\\ButtonHilight-Square")
    minimapBtn.highlight:SetBlendMode("ADD")

    local angle = math.rad(45)
    local radius = (Minimap:GetWidth() or 140) / 2 + 6

    local function PositionButton()
        local x = math.cos(angle) * radius
        local y = math.sin(angle) * radius
        minimapBtn:ClearAllPoints()
        minimapBtn:SetPoint("CENTER", Minimap, "CENTER", x, y)
    end

    PositionButton()

    minimapBtn.isDragging = false

    local function UpdateAngleFromCursor()
        local uiScale = UIParent:GetEffectiveScale()
        local cx, cy = Minimap:GetCenter()
        local x, y = GetCursorPosition()
        x = x / uiScale
        y = y / uiScale
        local dx = x - cx
        local dy = y - cy
        angle = math.atan2(dy, dx)
        if angle < 0 then angle = angle + (2 * math.pi) end
        PositionButton()
    end

    minimapBtn:SetScript("OnMouseDown", function(self, button)
        if button == "LeftButton" and IsShiftKeyDown() then
            self.isDragging = true
            self:SetScript("OnUpdate", UpdateAngleFromCursor)
        end
    end)

    minimapBtn:SetScript("OnMouseUp", function(self, button)
        if button == "LeftButton" and self.isDragging then
            self:SetScript("OnUpdate", nil)
            RuneBrowserDB.minimapAngle = angle
        end
    end)

    local ev = CreateFrame("Frame")
    ev:RegisterEvent("ADDON_LOADED")
    ev:SetScript("OnEvent", function(self, event, name)
        if name == addonName then
            if not RuneBrowserDB then RuneBrowserDB = {} end
            if type(RuneBrowserDB.minimapAngle) == "number" then
                angle = RuneBrowserDB.minimapAngle
            end
            PositionButton()
            self:UnregisterEvent("ADDON_LOADED")
        end
    end)

    minimapBtn:SetScript("OnClick", function(self, button)
        if button == "LeftButton" then
            if self.isDragging then
                self.isDragging = false
            else
                if frame:IsShown() then frame:Hide()
                else UpdateList() frame:Show() end
            end
        end
    end)

    minimapBtn:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_LEFT")
        GameTooltip:ClearLines()
        GameTooltip:AddLine("RuneBrowser")
        GameTooltip:AddLine("Left-Click: Toggle", 0.6,0.6,0.6)
        GameTooltip:AddLine("Shift+Left-Click: Drag Button", 0.6,0.6,0.6)
        GameTooltip:Show()
    end)
    minimapBtn:SetScript("OnLeave", function() GameTooltip:Hide() end)
end

local NUM_ROWS = 10
local ROW_HEIGHT = 32
local filteredList = {}

local listBg = CreateFrame("Frame", nil, frame)
listBg:SetPoint("TOPLEFT", 20, -73)
listBg:SetPoint("BOTTOMRIGHT", -62, 83)
listBg:SetBackdrop({
    bgFile = "Interface/DialogFrame/UI-DialogBox-Background",
    edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
    tile = true, tileSize = 32, edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 },
})
listBg:SetBackdropColor(1, 1, 1, 1)
listBg:SetFrameLevel(frame:GetFrameLevel() + 1)

local scroll = CreateFrame("ScrollFrame", "RuneBrowserScrollFrame", frame, "FauxScrollFrameTemplate")
scroll:SetPoint("TOPLEFT", -67, -76)
scroll:SetPoint("BOTTOMRIGHT", -67, 83)

local function ScrollList(delta)
    local cur = FauxScrollFrame_GetOffset(scroll)
    local maxOffset = #filteredList - NUM_ROWS
    if maxOffset < 0 then maxOffset = 0 end
    local next = cur - delta
    if next < 0 then next = 0 end
    if next > maxOffset then next = maxOffset end
    local scrollBar = _G[scroll:GetName().."ScrollBar"]
    if scrollBar then
        scrollBar:SetValue(next * ROW_HEIGHT)
    end
end

scroll:SetScript("OnMouseWheel", function(self, delta) ScrollList(delta) end)
frame:EnableMouseWheel(true)
frame:SetScript("OnMouseWheel", function(self, delta) ScrollList(delta) end)

local rows = {}
for i = 1, NUM_ROWS do
    local btn = CreateFrame("Button", "RuneBrowserRow"..i, frame)
    btn:SetFrameLevel(listBg:GetFrameLevel() + 2)
    btn:SetHeight(ROW_HEIGHT)
    btn:SetPoint("TOPLEFT", 25, -85 - (i-1) * ROW_HEIGHT)
    btn:SetPoint("RIGHT", frame, "RIGHT", -62, 0)

    btn.icon = btn:CreateTexture(nil, "ARTWORK")
    btn.icon:SetSize(28,28)
    btn.icon:SetPoint("LEFT", 4, 0)

    btn.text = btn:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    btn.text:SetPoint("LEFT", btn.icon, "RIGHT", 8, 0)
    btn.text:SetJustifyH("LEFT")

    btn.idLabel = btn:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
    btn.idLabel:SetPoint("LEFT", btn.text, "RIGHT", 6, 0)
    btn.idLabel:SetJustifyH("LEFT")
    btn.idLabel:SetTextColor(1.0, 0.82, 0.0)
    btn.idLabel:SetText("SpellID:")

    btn.idText = btn:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
    btn.idText:SetPoint("LEFT", btn.idLabel, "RIGHT", 3, 0)
    btn.idText:SetJustifyH("LEFT")
    btn.idText:SetTextColor(1.0, 0.82, 0.0)

    btn.highlight = btn:CreateTexture(nil, "HIGHLIGHT")
    btn.highlight:SetPoint("TOPLEFT")
    btn.highlight:SetPoint("BOTTOMRIGHT", -5, 0)
    btn.highlight:SetTexture(1, 0.82, 0, 0.15)

    btn:SetScript("OnEnter", function(self)
        self.text:SetTextColor(1, 0.82, 0)
        local id = self.spellID
        if id then
            GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
            GameTooltip:ClearLines()
            GameTooltip:SetHyperlink("spell:"..id)
            GameTooltip:Show()
        end
    end)
    btn:SetScript("OnLeave", function(self)
        self.text:SetTextColor(1, 1, 1)
        GameTooltip:Hide()
    end)
    
    rows[i] = btn
end

local version = GetAddOnMetadata(addonName, "Version") or "?"
local author = GetAddOnMetadata(addonName, "Author") or "?"

local infoTab = CreateFrame("Button", "RuneBrowserInfoTab", frame)
infoTab:SetSize(160, 32)
infoTab:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 20, 51)
infoTab:EnableMouse(false)
infoTab:SetNormalTexture("Interface\\PaperDollInfoFrame\\UI-Character-ActiveTab")

infoTab.text = infoTab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
infoTab.text:SetPoint("CENTER", 0, 0)
infoTab.text:SetTextColor(1, 1, 1)
infoTab.text:SetText(version.." - made by "..author)

local spellSources = {
    UNCOMMON = spellsUncommon,
    RARE = spellsRare,
    EPIC = spellsEpic,
    LEGENDARY = spellsLegendary,
}

local function RebuildFilteredList()
    filteredList = {}
    local source = spellSources[filterState] or spellsUncommon
    if #source == 0 then
        if searchQuery == "" then
            table.insert(filteredList, { type = "wip", text = "Work In Progress" })
        end
        return
    end
    for _, id in ipairs(source) do
        if searchQuery == "" then
            table.insert(filteredList, id)
        else
            local name = GetSpellInfo(id)
            if name and name:lower():find(searchQuery, 1, true) then
                table.insert(filteredList, id)
            end
        end
    end
end

local function UpdateList()
    RebuildFilteredList()
    local offset = FauxScrollFrame_GetOffset(scroll)
    local num = #filteredList
    FauxScrollFrame_Update(scroll, num, NUM_ROWS, ROW_HEIGHT)
    for i = 1, NUM_ROWS do
        local idx = i + offset
        local btn = rows[i]
        if idx <= num then
            local entry = filteredList[idx]
            if type(entry) == "table" and entry.type == "wip" then
                btn.spellID = nil
                btn.icon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
                btn.text:SetText(entry.text)
                btn.idLabel:Hide()
                btn.idText:SetText("")
            else
                local id = entry
                local name, _, icon = GetSpellInfo(id)
                btn.spellID = id
                btn.icon:SetTexture(icon or "Interface\\Icons\\INV_Misc_QuestionMark")
                btn.text:SetText(name or ("["..tostring(id).."]"))
                btn.idLabel:Show()
                btn.idText:SetText(tostring(id))
            end
            btn.text:SetTextColor(1,1,1)
            btn.icon:SetVertexColor(1,1,1)
            if btn.icon.SetDesaturated then btn.icon:SetDesaturated(false) end
            btn:Show()
        else
            btn:Hide()
            btn.spellID = nil
        end
    end
    local focus = GetMouseFocus()
    if focus then
        for i = 1, NUM_ROWS do
            if rows[i] == focus then
                local id = rows[i].spellID
                if id then
                    GameTooltip:SetOwner(rows[i], "ANCHOR_CURSOR")
                    GameTooltip:ClearLines()
                    GameTooltip:SetHyperlink("spell:"..id)
                    GameTooltip:Show()
                else
                    GameTooltip:Hide()
                end
                break
            end
        end
    end
end

_G.UpdateList = UpdateList

local function RuneBrowser_Toggle()
    if frame:IsShown() then frame:Hide()
    else UpdateList() frame:Show() end
end

SLASH_RUNEBROWSER1 = "/runebrowser"
SlashCmdList["RUNEBROWSER"] = RuneBrowser_Toggle

scroll:SetScript("OnVerticalScroll", function(self, offset)
    FauxScrollFrame_OnVerticalScroll(self, offset, ROW_HEIGHT, UpdateList)
end)

UpdateList()
